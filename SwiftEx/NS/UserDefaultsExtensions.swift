//
//  UserDefaultsExtensions.swift
//  SwiftEx
//
//  Created by Aryzae on 2018/02/15.
//  Copyright © 2018年 Aryzae. All rights reserved.
//

import Foundation

protocol KeyNamespaceable {
    func namespaced<T: RawRepresentable>(_ key: T) -> String
}

extension KeyNamespaceable {

    func namespaced<T: RawRepresentable>(_ key: T) -> String {
        return "\(Self.self).\(T.self).\(key.rawValue)"
    }
}

// MARK: - Bool
protocol BoolDefaultSettable : KeyNamespaceable {
    associatedtype BoolKey: RawRepresentable
}

extension BoolDefaultSettable where BoolKey.RawValue == String {

    func set(_ value: Bool, forKey key: BoolKey) {
        let key = namespaced(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    func bool(forKey key: BoolKey) -> Bool {
        let key = namespaced(key)
        return UserDefaults.standard.bool(forKey: key)
    }

    func removeObject(forKey key: BoolKey) {
        let key = namespaced(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - Int
protocol IntDefaultSettable : KeyNamespaceable {
    associatedtype IntKey: RawRepresentable
}

extension IntDefaultSettable where IntKey.RawValue == String {

    func set(_ value: Int, forKey key: IntKey) {
        let key = namespaced(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    func integer(forKey key: IntKey) -> Int {
        let key = namespaced(key)
        return UserDefaults.standard.integer(forKey: key)
    }

    func removeObject(forKey key: IntKey) {
        let key = namespaced(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - Float
protocol FloatDefaultSettable : KeyNamespaceable {
    associatedtype FloatKey: RawRepresentable
}

extension FloatDefaultSettable where FloatKey.RawValue == String {

    func set(_ value: Float, forKey key: FloatKey) {
        let key = namespaced(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    func float(forKey key: FloatKey) -> Float {
        let key = namespaced(key)
        return UserDefaults.standard.float(forKey: key)
    }

    func removeObject(forKey key: FloatKey) {
        let key = namespaced(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - Double
protocol DoubleDefaultSettable : KeyNamespaceable {
    associatedtype DoubleKey: RawRepresentable
}

extension DoubleDefaultSettable where DoubleKey.RawValue == String {

    func set(_ value: Double, forKey key: DoubleKey) {
        let key = namespaced(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    func double(forKey key: DoubleKey) -> Double {
        let key = namespaced(key)
        return UserDefaults.standard.double(forKey: key)
    }

    func removeObject(forKey key: DoubleKey) {
        let key = namespaced(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - String
protocol StringDefaultSettable : KeyNamespaceable {
    associatedtype StringKey: RawRepresentable
}

extension StringDefaultSettable where StringKey.RawValue == String {

    func set(_ value: String, forKey key: StringKey) {
        let key = namespaced(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    func string(forKey key: StringKey) -> String? {
        let key = namespaced(key)
        return UserDefaults.standard.string(forKey: key)
    }

    func removeObject(forKey key: StringKey) {
        let key = namespaced(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - StringArray
protocol StringArrayDefaultSettable : KeyNamespaceable {
    associatedtype StringArrayKey: RawRepresentable
}

extension StringArrayDefaultSettable where StringArrayKey.RawValue == String {

    func set(_ value: Any?, forKey key: StringArrayKey) {
        let key = namespaced(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    func stringArray(forKey key: StringArrayKey) -> [String]? {
        let key = namespaced(key)
        return UserDefaults.standard.stringArray(forKey: key)
    }

    func removeObject(forKey key: StringArrayKey) {
        let key = namespaced(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - URL
protocol URLDefaultSettable : KeyNamespaceable {
    associatedtype URLKey: RawRepresentable
}

extension URLDefaultSettable where URLKey.RawValue == String {

    func set(_ value: URL, forKey key: URLKey) {
        let key = namespaced(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    func url(forKey key: URLKey) -> URL? {
        let key = namespaced(key)
        return UserDefaults.standard.url(forKey: key)
    }

    func removeObject(forKey key: URLKey) {
        let key = namespaced(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - Array
protocol ArrayDefaultSettable : KeyNamespaceable {
    associatedtype ArrayKey: RawRepresentable
}

extension ArrayDefaultSettable where ArrayKey.RawValue == String {

    func set(_ value: Any?, forKey key: ArrayKey) {
        let key = namespaced(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    func array(forKey key: ArrayKey) -> [Any]? {
        let key = namespaced(key)
        return UserDefaults.standard.array(forKey: key)
    }

    func removeObject(forKey key: ArrayKey) {
        let key = namespaced(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - Dictionary
protocol DictionaryDefaultSettable : KeyNamespaceable {
    associatedtype DictionaryKey: RawRepresentable
}

extension DictionaryDefaultSettable where DictionaryKey.RawValue == String {

    func set(_ value: Any?, forKey key: DictionaryKey) {
        let key = namespaced(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    func dictionary(forKey key: DictionaryKey) -> [String: Any]? {
        let key = namespaced(key)
        return UserDefaults.standard.dictionary(forKey: key)
    }

    func removeObject(forKey key: DictionaryKey) {
        let key = namespaced(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

// MARK: - Data
protocol DataDefaultSettable : KeyNamespaceable {
    associatedtype DataKey: RawRepresentable
}

extension DataDefaultSettable where DataKey.RawValue == String {

    func set(_ value: Any?, forKey key: DataKey) {
        let key = namespaced(key)
        UserDefaults.standard.set(value, forKey: key)
    }

    func data(forKey key: DataKey) -> Data? {
        let key = namespaced(key)
        return UserDefaults.standard.data(forKey: key)
    }

    func removeObject(forKey key: DataKey) {
        let key = namespaced(key)
        UserDefaults.standard.removeObject(forKey: key)
    }
}

///
/// e.g.
///
//
//  extension UserDefaults: StringDefaultSettable {
//      enum StringKey: String {
//          case firstName
//          case lastName
//      }
//  }
//
/// e.g. set
//
//  UserDefaults.standard.set("Aryzae", forKey: .firstName)
//  UserDefaults.standard.set("Aspergillus", forKey: .lastName)
//
/// e.g. get
//
//  let firstName = UserDefaults.standard.string(forKey: .firstName)
//  let lastName = UserDefaults.standard.string(forKey: .lastName)
//
/// e.g. remove
//
//  UserDefaults.standard.removeObject(forKey: .firstName)
//  UserDefaults.standard.removeObject(forKey: .lastName)

