//
//  NodeTests.swift
//  TreeTraverserSwift
//
//  Created by Steve Baker on 5/19/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import TreeTraverserSwift

class NodeTests: XCTestCase {

    func testNodeChildrenNil() {
        let node = Node(value: 2, left: nil, right: nil)
        XCTAssertEqual(node.value, 2)
        XCTAssertNil(node.left)
        XCTAssertNil(node.right)
    }

    func testNodeWithChildren() {
        let left = Node(value: 10, left: nil, right: nil)
        let right = Node(value: 12, left: nil, right: nil)
        let node = Node(value: 2, left: left, right: right)
        XCTAssertEqual(node.value, 2)
        XCTAssertEqual(node.left, left)
        XCTAssertEqual(node.right, right)
    }

    func testNodeEqual() {
        let node0 = Node(value: 2, left: nil, right: nil)
        let node1 = Node(value: 10, left: node0, right: nil)
        let node2 = Node(value: 10, left: node0, right: nil)
        XCTAssertEqual(node1, node2)
        XCTAssertTrue(node1 == node2)
    }

    func testNodeNotEqualRight() {
        let node0 = Node(value: 2, left: nil, right: nil)
        let node1 = Node(value: 8, left: nil, right: nil)
        let node2 = Node(value: 10, left: node0, right: node1)
        let node3 = Node(value: 10, left: node0, right: nil)
        XCTAssertNotEqual(node2, node3)
        XCTAssertFalse(node2 == node3)
    }

    func testNodeNotEqualValue() {
        let node0 = Node(value: 2, left: nil, right: nil)
        let node1 = Node(value: 8, left: nil, right: nil)
        let node2 = Node(value: 10, left: node0, right: node1)
        let node3 = Node(value: 12, left: node0, right: node1)
        XCTAssertNotEqual(node2, node3)
        XCTAssertFalse(node2 == node3)
    }
}
