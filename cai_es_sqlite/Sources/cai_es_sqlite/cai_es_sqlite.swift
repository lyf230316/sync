import Foundation

@main
public struct cai_es_sqlite {
    var config: Config
    var es: Es

    public static func main() {
        guard CommandLine.arguments.count > 2 else {
            return
        }
        let cfgFile = CommandLine.arguments[1]
        guard let config = Config(file: cfgFile) else {
            return
        }
        guard let es = Es() else {
            return
        }
        let cai = cai_es_sqlite(config: config, es: es)
        RunLoop.current.run()
    }
}
