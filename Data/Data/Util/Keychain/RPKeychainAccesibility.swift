//
//  RPKeychainAccesibility.swift
//  Data
//
//  Created by Marcelo Stefano Velasquez Herrera on 27/03/22.
//

import Foundation

protocol KeychainAttrRepresentable {
    var keychainAttrValue: CFString { get }
}

// MARK: - KeychainItemAccessibility
public enum RPKeychainAccesibility {

    case afterFirstUnlock
    case afterFirstUnlockThisDeviceOnly
    case always
    case whenPasscodeSetThisDeviceOnly
    case alwaysThisDeviceOnly
    case whenUnlocked
    case whenUnlockedThisDeviceOnly
    
    static func accessibilityForAttributeValue(_ keychainAttrValue: CFString) -> RPKeychainAccesibility? {
        for (key, value) in keychainItemAccessibilityLookup {
            if value == keychainAttrValue {
                return key
            }
        }
        return nil
    }
}

private let keychainItemAccessibilityLookup: [RPKeychainAccesibility:CFString] = {
    var lookup: [RPKeychainAccesibility:CFString] = [
        .afterFirstUnlock: kSecAttrAccessibleAfterFirstUnlock,
        .afterFirstUnlockThisDeviceOnly: kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly,
        .always: kSecAttrAccessibleAlways,
        .whenPasscodeSetThisDeviceOnly: kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly,
        .alwaysThisDeviceOnly : kSecAttrAccessibleAlwaysThisDeviceOnly,
        .whenUnlocked: kSecAttrAccessibleWhenUnlocked,
        .whenUnlockedThisDeviceOnly: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
    ]
    
    return lookup
}()

extension RPKeychainAccesibility : KeychainAttrRepresentable {
    internal var keychainAttrValue: CFString {
        return keychainItemAccessibilityLookup[self]!
    }
}
