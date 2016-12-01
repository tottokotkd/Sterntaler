//
//  Mock.swift
//  Sterntaler
//
//  Created by Shusuke Tokuda on 2016/12/01.
//
//

import Foundation

public struct DriverMock {
    public typealias P = PoolMock
    public static func get(host: String, user: String, password: String, database: String, port: Int) -> P {
        return PoolMock()
    }
}

public struct PoolMock: Pool {
    public typealias C = ConnectionMock
    public func execute(sql: String) -> [Row] {
        return connect().execute(sql: sql)
    }
    public func connect() -> C {
        return ConnectionMock()
    }
}

public struct ConnectionMock: Connection {
    public func execute(sql: String) -> [Row] {
        return [RowMock()]
    }
}

public struct RowMock: Row {
    public subscript(i: Int) -> RowItem {
        return RowItemMock()
    }
}

public struct RowItemMock: RowItem {
    public var isEmpty: Bool {
        return false
    }
    public var asString: String? {
        return "test"
    }
    public var asInt: Int? {
        return 0
    }
    public var asDate: Date? {
        return Date(timeIntervalSince1970: 0)
    }
}
