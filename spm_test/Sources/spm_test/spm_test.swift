
import SourceKittenFramework
import Foundation

@main
public struct spm_test {
    public private(set) var text = "Hello, World!"
    public static var typeDic: [String: [[String: String]]] = [:]
    public static var ntArr: [String] = []
    public static var ntDic: [String: [String: String]] = [:]
    public static var psDic: [String: [[String: String]]] = [:]
    
    public static func main() {
        let file = "/Users/msi/git/github/sync/spm_test/Sources/h.swift"
        if let st = try? Structure(file: File(path: file)!){
            let dic = st.dictionary as NSDictionary
            if let structs = dic["key.substructure"] as? [NSDictionary] {
                for strt in structs {
                    if let kind = strt["key.kind"] as? String, kind == "source.lang.swift.decl.struct" {
                        handleOne(strt)
                    }
                }
            }
        }
        let rt = "es_message_t"
        self.handleType(name: rt)
//        print(self.ntArr)
//        print(self.ntDic as NSDictionary)
        
        for (name,t) in self.ntDic {
            let ps = self.pointsIntype(name: name)
            self.psDic[name] = ps
        }
        var arr: NSMutableArray = NSMutableArray()
        var dic: [String:Any] = [:]
        var names = [String]()
        names.append(contentsOf: self.psDic.keys)
        names.sort()
        for name in names {
            arr.add(name)
            if let points = self.psDic[name],
               points.count > 0 {
                dic[name] = ["points": points]
            }
        }
        let narr = self.ntArr.filter { n in
            arr.contains(n)
        }
        print(String(data: try! JSONSerialization.data(withJSONObject: narr), encoding: .utf8)!)
        print(String(data: try! JSONSerialization.data(withJSONObject: dic), encoding: .utf8)!)
    }
    
    public static func handleOne(_ dic: NSDictionary) {
        if let name = dic["key.name"] as? String {
            if let subarr = dic["key.substructure"] as? [NSDictionary] {
                var vardic : [[String: String]] = []
                for suba in subarr {
                    if let kind = suba["key.kind"] as? String,
                       kind == "source.lang.swift.decl.var.instance" {
                        vardic.append([suba["key.name"] as! String : suba["key.typename"] as! String])
                    }
                }
                self.typeDic[name] = vardic
            }
        }
    }
    
    static func handleType(name: String) {
        if !self.ntArr.contains(name) {
            self.ntArr.append(name)
        }
        if let type_t = self.typeDic[name] {
            var dic : [String: String] = [:]
            for v in type_t {
                for (n,t) in v {
                    if t.hasPrefix("Unsafe") {//指针类型
                        if t.hasSuffix(">") {
                            
                        } else if t.hasSuffix(">?") {
                            
                        } else if t.hasSuffix(">!") {
                            
                        } else {
                            assert(false)
                        }
                        self.handleType(name: self.getTypeFromPointerType(name: t))
                        dic[n] = t
                    } else if (t == "es_events_t") {//枚举类型
                        if let arr = self.typeDic[t] {
                            for v2 in arr {
                                for (_ , at) in v2 {
                                    var tp = at
                                    if at.hasPrefix("Unsafe") {
                                        tp = self.getTypeFromPointerType(name: tp)
                                    }
                                    self.handleType(name: tp)
                                }
                            }
                        }
                    } else {
                        self.handleType(name: t)
                        dic[n] = t
                    }
                }
            }
            self.ntDic[name] = dic
        }
    }
    
    static func getTypeFromPointerType(name: String) -> String {
        let arr = name.components(separatedBy: "<")
        if let r = arr.last?.components(separatedBy: ">").first {
            return r
        } else {
            assert(false)
        }
    }
    
    static func pointsIntype(name: String, path: String? = nil) -> [[String: String]] {
        var res: [[String: String]] = []
        if let vars = self.ntDic[name] {
            for (n,t) in vars {
                if t.hasPrefix("Unsafe") {
                    var dic: [String: String] = [:]
                    if t.hasSuffix("?") {
                        dic["optional"] = "true"
                    }
                    let pt = self.getTypeFromPointerType(name: t)
                    var name = n
                    if let path = path {
                        name = path+"."+n
                    }
                    dic["name"] = name
                    if pt == "CChar" {
                        var size = "length"
                        if let path = path {
                            size = path+"."+"length"
                        }
                        dic["size"] = size
                        dic["type"] = pt
                    } else if pt == "UInt8" {
                        var size = "size"
                        if let path = path {
                            size = path+"."+"size"
                        }
                        dic["size"] = size
                        dic["type"] = pt
                    }
                    else {
                        if pt == "statfs" {
                            dic["type"] = "es_statfs_t"
                        } else {
                            dic["type"] = pt
                        }
                    }
                    res.append(dic)
                } else {
                    var p = n
                    if let path = path {
                        p = path+"."+n
                    }
                    let ps = self.pointsIntype(name: t, path: p)
                    res.append(contentsOf: ps)
                }
            }
        }
        return res
    }
}
