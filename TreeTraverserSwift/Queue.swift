//
//  Queue.swift
//  TreeTraverserSwift
//
//  Created by Steve Baker on 5/19/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

/// A fifo queue of elements of type Any
/// https://www.raywenderlich.com/148141/swift-algorithm-club-swift-queue-data-structure
public struct Queue {

    /// array backs the queue
    /// Ray Wenderlich tutorial uses custom LinkedList instead
    fileprivate var list = Array<Any>()

    /// isEmpty is more efficient than checking count == 0
    /// - Returns: true if queue is empty
    public var isEmpty: Bool {
        return list.isEmpty
    }

    /// - Returns: number of elements in queue
    public var count: Int {
        return list.count
    }

    /// - Returns: first element in queue, doesn't alter queue
    ///   returns Nil if queue is empty
    public func peek() -> Any? {
        if list.isEmpty {
            return nil
        } else {
            return list.first
        }
    }

    /// Adds element to end of queue
    ///
    /// - Parameter element: object to add to end of queue
    public mutating func enqueue(_ element: Any) {
        list.append(element)
    }

    /// - Returns: first element in queue, removing it from queue
    ///   returns Nil if queue is empty
    public mutating func dequeue() -> Any? {
         if list.isEmpty {
            return nil
        } else {
            // removeFirst mutates list
            let first = list.removeFirst()
            return first
        }
    }

}
