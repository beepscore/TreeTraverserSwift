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
