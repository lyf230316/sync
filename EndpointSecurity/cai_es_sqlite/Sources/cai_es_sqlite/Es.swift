//
//  File.swift
//  
//
//  Created by msi on 2023/6/11.
//

import Foundation
import EndpointSecurity

class Es {
    var client: OpaquePointer!
    var msgBlock: ((OpaquePointer, UnsafePointer<es_message_t>) -> Void)? = nil
    
    init?() {
        let res = es_new_client(&client) { client, msg_p in
            self.handleMsg(client, msg_p)
        }
        if res != ES_NEW_CLIENT_RESULT_SUCCESS {
            print(#file,#function,#line,res)
            return nil
        }
    }
    
    func handleMsg(_ client: OpaquePointer,_ message: UnsafePointer<es_message_t>) {
        if let blk = msgBlock {
            blk(client, message)
        }
    }
    
    deinit {
        if let es_client = client {
            es_delete_client(es_client)
        }
    }
}

extension Es {
    func subscribe(_ types:[es_event_type_t]) -> es_return_t {
        return es_subscribe(client, types, UInt32(types.count))
    }
    
    func unsubscribe(_ types:[es_event_type_t]) -> es_return_t {
        return es_unsubscribe(client, types, UInt32(types.count))
    }
    
    func unsubscribeAll() -> es_return_t {
        return es_unsubscribe_all(client)
    }
    
    func subscriptions() -> [es_event_type_t]? {
        var count: Int = 0
        var res = es_subscriptions(client, &count, nil)
        guard res == ES_RETURN_SUCCESS else {
            return nil
        }
        var rp = calloc(count, MemoryLayout<es_event_type_t>.size).bindMemory(to: es_event_type_t.self, capacity: count)
        res = es_subscriptions(client, &count, &rp)
        guard res == ES_RETURN_SUCCESS else {
            return nil
        }
        var result: [es_event_type_t] = []
        for i in 0 ..< count {
            result.append(rp.advanced(by: i).pointee)
        }
        free(rp)
        return result
    }
}
