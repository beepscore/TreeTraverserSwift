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

    /// - Returns: level in binary tree
    /// returns 0 for root node
    class func level(nodeCount: Int) -> Int {
        if nodeCount <= 1 {
            return 0
        }
        return Int(log2(Float(nodeCount)))
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

        // node positions, including nil children
        var nodeCount = 1
        var level = 0

        var currentNode = root

        while !queue.isEmpty {

            currentNode = queue.dequeue() as! Node
            nodes.append(currentNode)

            // FIXME:
            // increment nodeCount, even if one or more nodes are nil
            nodeCount += 2
            level = TreeTraverser.level(nodeCount: nodeCount)

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
