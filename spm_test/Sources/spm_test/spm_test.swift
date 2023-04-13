
import SourceKittenFramework
import Foundation

@main
public struct spm_test {
    public private(set) var text = "Hello, World!"

    public static func main() {
        let file = "/Users/lyf/Documents/Xcode/SourceKitten/h.swift"
        if let st = try? Structure(file: File(path: file)!){
            let dic = st.dictionary as NSDictionary
            if let structs = dic["key.substructure"] as? [NSDictionary] {
                for strt in structs {
                    print(strt["key.name"], strt["key.kind"])
                }
            }
        }
        
    }
}
