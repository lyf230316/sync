
import Foundation
import SwiftSyntax
import SwiftParser

@main
///Users/lyf/git/github/sync/EndpointSecurity/swift_syntax/Sources/cai_es_syntax/ES.swift.txt
public struct cai_es_syntax {
    public private(set) var text = "Hello, World!"

    public static func main() {
        let txt = try! String(contentsOf: URL(filePath: "/Users/lyf/git/github/sync/EndpointSecurity/swift_syntax/Sources/cai_es_syntax/ES.swift.txt"))
        let sourceFile = SwiftParser.Parser.parse(source: txt)
        let ds = sourceFile.debugDescription
        print(ds)
    }
}
