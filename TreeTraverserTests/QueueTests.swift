//
//  QueueTests.swift
//  TreeTraverserSwift
//
//  Created by Steve Baker on 5/19/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import TreeTraverser

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

        // call method under test
        let first = queue.peek() as! Node

        XCTAssertEqual(first, node)
        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.count, 1)
    }

    func testDequeue() {
        var queue = Queue()
        XCTAssertNil(queue.peek())
        let node = Node(value: 2, left: nil, right: nil)
        queue.enqueue(node)

        // call method under test
        let first = queue.dequeue() as! Node

        XCTAssertEqual(first, node)
        XCTAssertTrue(queue.isEmpty)
        XCTAssertEqual(queue.count, 0)
    }

    func testDequeueTwo() {
        var queue = Queue()
        XCTAssertNil(queue.peek())
        let node0 = Node(value: 2, left: nil, right: nil)
        let node1 = Node(value: 8, left: nil, right: nil)
        queue.enqueue(node0)
        queue.enqueue(node1)
        XCTAssertEqual(queue.count, 2)

        // call method under test
        let first = queue.dequeue() as! Node
        XCTAssertEqual(queue.count, 1)

        XCTAssertEqual(first, node0)

        let next = queue.peek() as! Node
        XCTAssertEqual(queue.count, 1)
        XCTAssertEqual(next, node1)

        let dequeued = queue.dequeue() as! Node
        XCTAssertEqual(dequeued, node1)
        XCTAssertEqual(queue.count, 0)

        let dequeuedFromEmptyQueue = queue.dequeue()
        XCTAssertNil(dequeuedFromEmptyQueue)
    }

}
