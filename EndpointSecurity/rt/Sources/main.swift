// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

print("Hello, world!")

guard let es = Es() else {
    exit(1)
}
es.msgBlock = { (cli, msg) in
    let m = Mirror(reflecting: msg.pointee)
    print(m.subjectType,"{")
    for c in m.children {
        print("",type(of: c.value), c.label)
    }
    print("}")
}
_ = es.subscribe(Const.nofifyTypes)
RunLoop.current.run()
