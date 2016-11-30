//
// Sterntaler: DbConvertible.swift
// Created by tottokotkd on 2016/11/27.
//

import Foundation

public protocol DbConvertible {
    static func read(_ r: RowItem) -> Self
}

extension Int: DbConvertible {
    public static func read(_ r: RowItem) -> Int {
        return r.asInt!
    }
}
extension String: DbConvertible {
    public static func read(_ r: RowItem) -> String {
        return r.asString!
    }
}
extension Date: DbConvertible {
    public static func read(_ r: RowItem) -> Date {
        return r.asDate!
    }
}
extension Optional: DbConvertible {
    public static func read(_ r: RowItem) -> Optional<Wrapped> {
        if let readable = Wrapped.self as? DbConvertible.Type {
            if r.isEmpty {
                return nil
            } else {
                return readable.read(r) as? Wrapped
            }
        }
        return nil
    }
}
