//
//  Ccode.swift
//  esjson
//
//  Created by msi on 2023/11/2.
//

import Foundation

protocol Ccode {
    func Ccode(_ record: Record) -> String
    func Ccode(_ e: Enum) -> String
    func Ccode(_ t: TypeDef) -> String
}
