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

}
