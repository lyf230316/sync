
import Foundation
import EndpointSecurity

class Config {
    var types: [es_event_type_t] = []
    var output: String = ""
    
    init?(_ arguments: [String]) {
        var index = 1
        while index < arguments.count {
            let cmd = arguments[index]
            if cmd == "-c" {
                index += 1;
                guard index < arguments.count else {
                    cai_es.usage()
                    return nil
                }
                let cfg = arguments[index]
                var isDir: ObjCBool = false
                guard FileManager.default.fileExists(atPath: cfg, isDirectory: &isDir) && !isDir.boolValue else {
                    cai_es.usage()
                    return nil
                }
                guard let data = NSData(contentsOfFile: cfg) else {
                    print("读取配置文件失败")
                    return nil
                }
                guard let dic = try? JSONSerialization.jsonObject(with: data as Data) as? [String: Any] else {
                    print("解析配置文件失败")
                    return nil
                }
                guard let types = dic["subscribe_es_event_types"] as? [String] else {
                    print("从配置文件中获取subscribe_es_event_types失败")
                    return nil
                }
                for type in types {
                    if let t = cai_es.esEventTypeNameDic[type] {
                        self.types.append(t)
                    } else {
                        print("\(type) 解析失败")
                        return nil
                    }
                }
            } else if cmd == "-o" {
                index += 1;
                guard index < arguments.count else {
                    cai_es.usage()
                    return nil
                }
                let fp = arguments[index]
                var isDir: ObjCBool = false
                guard FileManager.default.fileExists(atPath: fp, isDirectory: &isDir) && isDir.boolValue else {
                    cai_es.usage()
                    return nil
                }
                output = fp
            }
        }
    }
}

@main
public struct cai_es {
    
    public static func usage() {
        print("""
cai_es [-c <config_file>] [-o <output_dir>]
-c 配置文件，用于管理订阅事件，默认全部事件。
-o 输出文件夹。用于指定保存日志的文件。默认：FileManager.default.currentDirectoryPath。
""")
    }
    
    public static func main() {
        guard let cfg = Config(CommandLine.arguments) else {
            exit(1)
        }
        guard let es = Es() else {
            exit(1)
        }
    }
    
}
