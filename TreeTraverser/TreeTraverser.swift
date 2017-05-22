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
        var nodes = [root]

        // nodes from level in the order they were traversed
        var levelNodesInOrderTraversed = [Node]()

        // nodes from previous level in reverse order they were traversed
        var previousLevelNodesReversed = [root]

        // queue of Nodes to visit
        var queue = Queue()
        queue.enqueue(root)

        // level of currentNode in tree
        var level = 1

        while !queue.isEmpty {

            for parentNode in previousLevelNodesReversed {

                // decrease queue
                var _ = queue.dequeue() as! Node

                // visit children

                if TreeTraverser.isEven(int: level) {

                    // traverse left to right
                    if let left = parentNode.left {
                        levelNodesInOrderTraversed.append(left)
                    }
                    if let right = parentNode.right {
                        levelNodesInOrderTraversed.append(right)
                    }

                } else {
                    // level is odd
                    // traverse right to left
                    if let right = parentNode.right {
                        levelNodesInOrderTraversed.append(right)
                    }
                    if let left = parentNode.left {
                        levelNodesInOrderTraversed.append(left)
                    }
                }
            }

            // save level
            nodes += levelNodesInOrderTraversed
            let levelNodesReversed: [Node] = levelNodesInOrderTraversed.reversed()
            // append to queue directly without using enqueue()
            queue.list = queue.list + levelNodesReversed

            // prepare for next level
            level += 1
            previousLevelNodesReversed = levelNodesReversed
            levelNodesInOrderTraversed = []
        }
        return nodes
    }

}

