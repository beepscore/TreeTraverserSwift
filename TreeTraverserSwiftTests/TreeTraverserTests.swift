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

    func nodeValues(_ nodes: [Node]) -> [Int] {
        return nodes.map({($0).value})
    }

    func testNodesByTraversingZigZagOneNode() {
        let node = Node(value: 0, left: nil, right: nil)
        XCTAssertEqual(TreeTraverser.nodesByTraversingZigZag(root: node), [node])
    }

    func testNodesByTraversingZigZagThreeNodes() {
        let node2 = Node(value: 8, left: nil, right: nil)
        let node1 = Node(value: 2, left: nil, right: nil)
        let node0 = Node(value: 0, left: node1, right: node2)

        XCTAssertEqual(TreeTraverser.nodesByTraversingZigZag(root: node0),
                       [node0, node2, node1])
    }

    func testNodesByTraversingZigZagSevenNodes() {
        let node6 = Node(value: 20, left: nil, right: nil)
        let node5 = Node(value: 12, left: nil, right: nil)
        let node4 = Node(value: -3, left: nil, right: nil)
        let node3 = Node(value: 7, left: nil, right: nil)
        let node2 = Node(value: 8, left: node5, right: node6)
        let node1 = Node(value: 2, left: node3, right: node4)
        let node0 = Node(value: 0, left: node1, right: node2)

        let actual = TreeTraverser.nodesByTraversingZigZag(root: node0)
        XCTAssertEqual(actual.count, 7)

        XCTAssertEqual(nodeValues(actual),
                       [node0.value,
                        node2.value, node1.value,
                        node3.value, node4.value, node5.value, node6.value])
        
        XCTAssertEqual(nodeValues(actual), [0, 8, 2, 7, -3, 12, 20])
        XCTAssertEqual(actual.description, "[0, 8, 2, 7, -3, 12, 20]")
    }

}
