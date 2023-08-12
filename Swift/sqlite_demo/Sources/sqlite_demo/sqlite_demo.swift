@main
public struct sqlite_demo {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(sqlite_demo().text)
    }
}
