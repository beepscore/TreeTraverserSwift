//
//  TreeTraverserTests.swift
//  TreeTraverserSwiftTests
//
//  Created by Steve Baker on 5/18/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import TreeTraverserSwift

class TreeTraverserTests: XCTestCase {

    func testLevel() {
        XCTAssertEqual(TreeTraverser.level(nodeCount: 0), 0)
        XCTAssertEqual(TreeTraverser.level(nodeCount: 1), 0)
        XCTAssertEqual(TreeTraverser.level(nodeCount: 2), 1)
        XCTAssertEqual(TreeTraverser.level(nodeCount: 3), 1)
        XCTAssertEqual(TreeTraverser.level(nodeCount: 4), 2)
        XCTAssertEqual(TreeTraverser.level(nodeCount: 5), 2)
        XCTAssertEqual(TreeTraverser.level(nodeCount: 6), 2)
        XCTAssertEqual(TreeTraverser.level(nodeCount: 7), 2)
        XCTAssertEqual(TreeTraverser.level(nodeCount: 8), 3)
    }

    func testNodesByTraversingZigZagOneNode() {
        let node = Node(value: 0, left: nil, right: nil)
        XCTAssertEqual(TreeTraverser.nodesByTraversingZigZag(root: node), [node])
    }

    func testNodesByTraversingZigZagThreeNodes() {
        let node1 = Node(value: 2, left: nil, right: nil)
        let node2 = Node(value: 8, left: nil, right: nil)
        let node0 = Node(value: 0, left: node1, right: node2)

        XCTAssertEqual(TreeTraverser.nodesByTraversingZigZag(root: node0),
                       [node0, node2, node1])
    }


}
