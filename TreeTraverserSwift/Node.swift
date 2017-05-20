//
//  Node.swift
//  TreeTraverserSwift
//
//  Created by Steve Baker on 5/19/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

/// Hashable so it can be used in a set
/// http://stackoverflow.com/questions/41972319/make-struct-hashable
public class Node: NSObject {
    var value: Int
    var left: Node?
    var right: Node?

    init(value: Int, left: Node?, right: Node?) {
        self.value = value
        self.left = left
        self.right = right
    }

    // hashValue does not have to be unique
    override public var hashValue: Int {
        return value
    }

    /// computed property
    // http://stackoverflow.com/questions/30967182/overriding-description-method-in-nsobject-on-swift
    override public var description: String {
        return String(value)
    }

}

/// implement Equatable, outside of class Node
/// - Parameters:
///   - lhs: a Node
///   - rhs: a Node
/// - Returns: true if all properties are equal
public func == (lhs: Node, rhs: Node) -> Bool {
    let valueEqual = lhs.value == rhs.value
    let leftEqual = lhs.left == rhs.left
    let rightEqual = lhs.right == rhs.right
    return valueEqual && leftEqual && rightEqual
}
