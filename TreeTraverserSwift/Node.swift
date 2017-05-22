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

    /// override isEqual enables comparing nodes via XCTAssertEqual and via ==
    /// so it is more general than simply defining func '==' for 2 Node
    override public func isEqual(_ x: Any?) -> Bool {
        guard let x = x as? Node else {
            return false
        }
        let valueEqual = value == x.value
        let leftEqual = left == x.left
        let rightEqual = right == x.right
        return valueEqual && leftEqual && rightEqual
    }

    /// computed property
    // http://stackoverflow.com/questions/30967182/overriding-description-method-in-nsobject-on-swift
    override public var description: String {
        return String(value)
    }
    
}

