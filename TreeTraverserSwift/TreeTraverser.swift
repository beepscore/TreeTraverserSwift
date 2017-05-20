//
//  TreeTraverser.swift
//  TreeTraverserSwift
//
//  Created by Steve Baker on 5/18/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

class TreeTraverser: NSObject {

    /// - Returns: true if int is even, false otherwise
    class func isEven(int: Int) -> Bool {
        return int % 2 == 0
    }

    /// Traverses binary tree breadth first, alternate direction each level
    /// https://en.wikipedia.org/wiki/Breadth-first_search
    /// - Parameter root: tree root Node
    /// - Returns: array of nodes in traversal order
    class func nodesByTraversingZigZag(root: Node) -> [Node] {

        // nodes to return
        var nodes = [Node]()

        // queue of Nodes to visit
        var queue = Queue()
        queue.enqueue(root)

        var level = 0

        var currentNode = root

        while !queue.isEmpty {

            currentNode = queue.dequeue() as! Node
            nodes.append(currentNode)

            // FIXME: store level in queue??
            // or allow queue to enqueue null?
            // calculate based on count and number of nil children??
            level += 1

            if TreeTraverser.isEven(int: level) {
                // traverse left to right
                if let left = currentNode.left {
                    queue.enqueue(left)
                }
                if let right = currentNode.right {
                    queue.enqueue(right)
                }

            } else {
                // level is odd
                // traverse right to left
                if let right = currentNode.right {
                    queue.enqueue(right)
                }
                if let left = currentNode.left {
                    queue.enqueue(left)
                }
            }

        }
        return nodes
    }
}
