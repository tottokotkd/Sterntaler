//
// Sterntaler: Column.swift
// Created by tottokotkd on 2016/11/26.
//

import Foundation

public struct Column<T: DbConvertible> {
    public init(name: String) {
        self.name = name
    }

    public let name: String

    func read(r: RowItem) -> T {
        return T.read(r)
    }
}

public struct Columns {
    public static func int(_ name: String) -> Column<Int> {
        return Column(name: name)
    }
    public static func string(_ name: String) -> Column<String>  {
        return Column(name: name)
    }
    public static func date(_ name: String) -> Column<Date>  {
        return Column(name: name)
    }
}

public struct NullableColumns {
    public static func int(_ name: String) -> Column<Int?> {
        return Column(name: name)
    }
    public static func string(_ name: String) -> Column<String?>  {
        return Column(name: name)
    }
    public static func date(_ name: String) -> Column<Date?> {
        return Column(name: name)
    }
}

extension Row {
    public func read<C1>(tuple: (Column<C1>)) -> (C1) {
        return (
            C1.read(self[0])
        )
    }
    public func read<C1, C2>(tuple: (Column<C1>, Column<C2>)) -> (C1, C2) {
        return (
            C1.read(self[0]),
            C2.read(self[1])
        )
    }
    public func read<C1, C2, C3>(tuple: (Column<C1>, Column<C2>, Column<C3>)) -> (C1, C2, C3) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2])
        )
    }
    public func read<C1, C2, C3, C4>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>)) -> (C1, C2, C3, C4) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3])
        )
    }
    public func read<C1, C2, C3, C4, C5>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>)) -> (C1, C2, C3, C4, C5) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>)) -> (C1, C2, C3, C4, C5, C6) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>)) -> (C1, C2, C3, C4, C5, C6, C7) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>)) -> (C1, C2, C3, C4, C5, C6, C7, C8) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9, C10>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>, Column<C10>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9, C10) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8]),
            C10.read(self[9])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>, Column<C10>, Column<C11>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8]),
            C10.read(self[9]),
            C11.read(self[10])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>, Column<C10>, Column<C11>, Column<C12>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8]),
            C10.read(self[9]),
            C11.read(self[10]),
            C12.read(self[11])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>, Column<C10>, Column<C11>, Column<C12>, Column<C13>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8]),
            C10.read(self[9]),
            C11.read(self[10]),
            C12.read(self[11]),
            C13.read(self[12])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>, Column<C10>, Column<C11>, Column<C12>, Column<C13>, Column<C14>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8]),
            C10.read(self[9]),
            C11.read(self[10]),
            C12.read(self[11]),
            C13.read(self[12]),
            C14.read(self[13])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>, Column<C10>, Column<C11>, Column<C12>, Column<C13>, Column<C14>, Column<C15>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8]),
            C10.read(self[9]),
            C11.read(self[10]),
            C12.read(self[11]),
            C13.read(self[12]),
            C14.read(self[13]),
            C15.read(self[14])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>, Column<C10>, Column<C11>, Column<C12>, Column<C13>, Column<C14>, Column<C15>, Column<C16>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8]),
            C10.read(self[9]),
            C11.read(self[10]),
            C12.read(self[11]),
            C13.read(self[12]),
            C14.read(self[13]),
            C15.read(self[14]),
            C16.read(self[15])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>, Column<C10>, Column<C11>, Column<C12>, Column<C13>, Column<C14>, Column<C15>, Column<C16>, Column<C17>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8]),
            C10.read(self[9]),
            C11.read(self[10]),
            C12.read(self[11]),
            C13.read(self[12]),
            C14.read(self[13]),
            C15.read(self[14]),
            C16.read(self[15]),
            C17.read(self[16])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17, C18>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>, Column<C10>, Column<C11>, Column<C12>, Column<C13>, Column<C14>, Column<C15>, Column<C16>, Column<C17>, Column<C18>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17, C18) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8]),
            C10.read(self[9]),
            C11.read(self[10]),
            C12.read(self[11]),
            C13.read(self[12]),
            C14.read(self[13]),
            C15.read(self[14]),
            C16.read(self[15]),
            C17.read(self[16]),
            C18.read(self[17])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17, C18, C19>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>, Column<C10>, Column<C11>, Column<C12>, Column<C13>, Column<C14>, Column<C15>, Column<C16>, Column<C17>, Column<C18>, Column<C19>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17, C18, C19) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8]),
            C10.read(self[9]),
            C11.read(self[10]),
            C12.read(self[11]),
            C13.read(self[12]),
            C14.read(self[13]),
            C15.read(self[14]),
            C16.read(self[15]),
            C17.read(self[16]),
            C18.read(self[17]),
            C19.read(self[18])
        )
    }
    public func read<C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17, C18, C19, C20>(tuple: (Column<C1>, Column<C2>, Column<C3>, Column<C4>, Column<C5>, Column<C6>, Column<C7>, Column<C8>, Column<C9>, Column<C10>, Column<C11>, Column<C12>, Column<C13>, Column<C14>, Column<C15>, Column<C16>, Column<C17>, Column<C18>, Column<C19>, Column<C20>)) -> (C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17, C18, C19, C20) {
        return (
            C1.read(self[0]),
            C2.read(self[1]),
            C3.read(self[2]),
            C4.read(self[3]),
            C5.read(self[4]),
            C6.read(self[5]),
            C7.read(self[6]),
            C8.read(self[7]),
            C9.read(self[8]),
            C10.read(self[9]),
            C11.read(self[10]),
            C12.read(self[11]),
            C13.read(self[12]),
            C14.read(self[13]),
            C15.read(self[14]),
            C16.read(self[15]),
            C17.read(self[16]),
            C18.read(self[17]),
            C19.read(self[18]),
            C20.read(self[19])
        )
    }
}
