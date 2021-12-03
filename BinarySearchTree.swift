class BinarySearchTree<T: Comparable> {
 
  var node: T
  var parent: BinarySearchTree?
  var left: BinarySearchTree?
  var right: BinarySearchTree?

  init(node: T) {
    self.node = node
  }

  public var count: Int {
    return (left?.count ?? 0) + 1 + (right?.count ?? 0)
  }

  public var isEmpty: Bool {
     if case node = self.node {
        return true
     }
     return false
  }

  /* Declare head
  public var isEmpty: Bool {
    return head == nil
  }
  */

  var isLeftChild: Bool { 
    return parent?.left === self
  }

  func insert(node: T) {
    if node < self.node {
      if let left = left {
        left.insert(node: node)
      } else {
        left = BinarySearchTree(node: node)
        left?.parent = self
      }
    } else {
      if let right = right {
        right.insert(node: node)
      } else {
        right = BinarySearchTree(node: node)
        right?.parent = self
      }
    }
  }

  func remove() -> BinarySearchTree? {
    let replacement: BinarySearchTree?

    if let right = right {
      replacement = right.minimum()
    } else if let left = left {
      replacement = left.maximum()
    } else {
      replacement = nil
    }

    replacement?.remove()

    replacement?.right = right
    replacement?.left = left
    right?.parent = replacement
    left?.parent = replacement
    reconnectParent(to: replacement)

    parent = nil
    left = nil
    right = nil

    return replacement
  }

  func minimum() -> BinarySearchTree {
    var node = self
    while let prevNode = node.left {
      node = prevNode
    }
    return node
  }

  func maximum() -> BinarySearchTree {
    var node = self
    while let nextNode = node.right {
      node = nextNode
    }
    return node
  }

  func reconnectParent(to node: BinarySearchTree?) {
   if let parent = parent {
     if isLeftChild {
       parent.left = node
      } else {
          parent.right = node
        }
    }
    node?.parent = parent
  }

  func inOrder(process: (T) -> Void) {
   left?.inOrder(process: process)
   process(node)
   right?.inOrder(process: process)
  }

  func preOrder(process: (T) -> Void) {
   process(node)
   left?.preOrder(process: process)
   right?.preOrder(process: process)
  }

  func postOrder(process: (T) -> Void) {
   left?.postOrder(process: process)
   right?.postOrder(process: process)
   process(node)
  }

  func search(node: T) -> BinarySearchTree? {
    if node < self.node {
      return left?.search(node: node)
    } else if node > self.node {
      return right?.search(node: node)
    } else {
      return self
    }
  }
}


