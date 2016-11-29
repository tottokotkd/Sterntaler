//
// Sterntaler: Column.swift
// Created by tottokotkd on 2016/11/27.
//

import Foundation

public protocol Driver {
    associatedtype P: Pool
    static func get(host: String, user: String, password: String, database: String, port: Int) -> P
}

public protocol Pool {
    associatedtype C: Connection
    func execute(sql: String) -> [Row]
}

public protocol Connection {
    func execute(sql: String) -> [Row]
}


public protocol Row {
    subscript(i: Int) -> RowItem { get }
}

public protocol RowItem {
    var isEmpty: Bool {get}
    var asString: String? {get}
    var asInt: Int? {get}
    var asDate: Date? {get}
}

public protocol Columns {
    associatedtype T
    static func read(r: Row) -> T
}
