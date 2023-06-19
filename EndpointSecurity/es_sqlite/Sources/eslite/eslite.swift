

public struct Args {
    let dbPath: String
}

@main
public struct eslite {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(eslite().text)
    }
    
    public static func handleArgs() -> Args? {
        let argInfo = [
            "db" : 1
        ]
        var argDic : [String:[String]] = [:]
        var i = 1
        while i < CommandLine.arguments.count {
            let arg = CommandLine.arguments[i]
            if let count = argInfo[arg] {
                var args: [String] = []
                for _ in 0 ..< count {
                    i += 1
                    let oarg = CommandLine.arguments[i]
                    args.append(oarg)
                }
                argDic[arg] = args
            }
            i += 1
        }
        
        if let db = argDic["db"]?.first {
            return Args(dbPath: db)
        } else {
            return nil
        }
    }
}
