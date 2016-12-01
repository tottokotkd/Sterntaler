//
// Sterntaler: TableTests.swift
// Created by tottokotkd on 2016/11/27.
//

import XCTest
@testable import Sterntaler

class sterntalerTests: XCTestCase {
    func testCompile() {
        do {
            let columns = (Columns.int("id"), Columns.string("name"), Columns.date("day"))
            let rows = DriverMock.get(host: "", user: "", password: "", database: "", port: 0).execute(sql: "")
            let data = rows.map{$0.read(tuple: columns)}[0]
            XCTAssertEqual(data.0, 0)
            XCTAssertEqual(data.1, "test")
            XCTAssertEqual(data.2, Date(timeIntervalSince1970: 0))
        }
        
        do {
            let columns = (NullableColumns.int("id"), NullableColumns.string("name"), NullableColumns.date("day"))
            let rows = DriverMock.get(host: "", user: "", password: "", database: "", port: 0).execute(sql: "")
            let data = rows.map{$0.read(tuple: columns)}[0]
            XCTAssertEqual(data.0, 0)
            XCTAssertEqual(data.1, "test")
            XCTAssertEqual(data.2, Date(timeIntervalSince1970: 0))
        }
    }
}
