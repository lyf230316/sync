//
//  XpcClient.swift
//  EventsUI
//
//  Created by lyf on 2023/9/8.
//

import Foundation
import EService
import Swr

class XpcClient: NSObject {
    static let share = XpcClient()
    
    var connection: NSXPCConnection!
    
    func connectService(name: String) {
        self.connection = NSXPCConnection(machServiceName: name)
        self.connection.remoteObjectInterface = NSXPCInterface(with: EService.self)
        self.connection.exportedInterface = NSXPCInterface(with:EServiceClient.self)
        self.connection.exportedObject = self;
        self.connection.resume()
    }

}

extension XpcClient: EServiceClient {
    func onType(_ type: ESCType, data: Data) {
        switch type {
        case ESCTypeMessage:
            var msg = malloc(MemoryLayout<es_message_t>.size).bindMemory(to: es_message_t.self, capacity: 1)
            data.by
            swr_es_message_t_read(msg, (data as NSData).bytes)
            print(data)
        default:
            print(data)
        }
    }
}

extension XpcClient {
    
    func subscribe(_ types: Data, callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.subscribe(types, callback: callback);
        }
        return err
    }
    
    func unsubscribe(_ types: Data, callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.unsubscribe(types, callback: callback);
        }
        return err
    }
    
    func unsubscribeAll(_ callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.unsubscribeAll(callback);
        }
        return err
    }
    
    func subScriptions(_ callback: @escaping (es_return_t, Data) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.subScriptions(callback);
        }
        return err
    }
    
    func muteProcess(_ audit_token: audit_token_t, callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.muteProcess(audit_token, callback: callback);
        }
        return err
    }
    
    func unmuteProcess(_ audit_token: audit_token_t, callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.unmuteProcess(audit_token, callback: callback);
        }
        return err
    }
    
    func muteProcess(_ audit_token: audit_token_t, envents types: Data, callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.muteProcess(audit_token, envents: types, callback: callback);
        }
        return err
    }
    
    func mutedProcessesEvents(_ callback: @escaping (es_return_t, Data) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.mutedProcessesEvents(callback);
        }
        return err
    }
    
    func mutedPath(_ path: String, type: es_mute_path_type_t, callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.mutedPath(path, type: type, callback: callback);
        }
        return err
    }
    
    func mutedPath(_ path: String, type: es_mute_path_type_t, events: Data, callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.mutedPath(path, type: type, events: events, callback: callback);
        }
        return err
    }
    
    func unmutedAllPathsCallback(_ callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.unmutedAllPathsCallback(callback);
        }
        return err
    }
    
    func unmutedAllTargetPathsCallback(_ callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.unmutedAllTargetPathsCallback(callback);
        }
        return err
    }
    
    func unmutePath(_ path: String, type: es_mute_path_type_t, callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.unmutePath(path, type: type, callback: callback);
        }
        return err
    }
    
    func unmutePath(_ path: String, type: es_mute_path_type_t, events: Data, callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.unmutePath(path, type: type, events: events, callback: callback);
        }
        return err
    }
    
    func mutedPathsEvents(_ callback: @escaping (es_return_t, Data) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.mutedPathsEvents(callback);
        }
        return err
    }
    
    func invertMuting(_ type: es_mute_inversion_type_t, callback: @escaping (es_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.invertMuting(type, callback: callback);
        }
        return err
    }
    
    func mutingInverted(_ type: es_mute_inversion_type_t, callback: @escaping (es_mute_inverted_return_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.mutingInverted(type, callback: callback);
        }
        return err
    }
    
    func clearCache(_ callback: @escaping (es_clear_cache_result_t) -> Void) -> Error? {
        var err: Error? = nil
        if let proxy = self.connection.synchronousRemoteObjectProxyWithErrorHandler({ error in
            err = error
        }) as? EService {
            proxy.clearCache(callback);
        }
        return err
    }
}
