//
//  QueueTests.swift
//  TreeTraverserSwift
//
//  Created by Steve Baker on 5/19/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import TreeTraverserSwift

class QueueTests: XCTestCase {

    func testQueueIsEmpty() {
        let queue = Queue()
        XCTAssertTrue(queue.isEmpty)
    }

    func testQueueCountZero() {
        let queue = Queue()
        XCTAssertEqual(queue.count, 0)
    }

    func testEnqueue() {
        var queue = Queue()
        let node = Node(value: 2, left: nil, right: nil)
        queue.enqueue(node)
        XCTAssertEqual(queue.count, 1)
    }

    func testPeek() {
        var queue = Queue()
        XCTAssertNil(queue.peek())
        let node = Node(value: 2, left: nil, right: nil)
        queue.enqueue(node)
        XCTAssertEqual(queue.peek() as! Node, node)
    }

}
