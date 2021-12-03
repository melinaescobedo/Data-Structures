var queue = Queue<MyObject>()
var deque = Deque<MyObject>()
var stack = Stack<MyObject>()


var object : MyObject?
var otherObject : MyObject?

/* ·········· QUEUE ·········· */
print("·········· QUEUE ··········")

object = MyObject("Max V", 351)
queue.enqueue(object!)

object = MyObject("Lewis H", 343)
queue.enqueue(object!)

object = MyObject("Valtteri B", 203)
queue.enqueue(object!)

object = MyObject("Sergio P", 190)
queue.enqueue(object!)

print("INITIAL OBJECTS: ")
print(queue.count)
queue.showObjects()
print(" ")

print("ENQUEUE... ")
object = nil
queue.enqueue(object)
print(" ")

print("DEQUEUE... ")
otherObject = queue.dequeue()
print(queue.count)
queue.showObjects()
print(" ")

print("SOME EXTRAS... ")
print(queue.getAt(1)!)
print(queue.indexOf(MyObject("Lewis H", 343))!)
print(queue.ocurrences(MyObject("Sergio P", 190))!)

print(" ")

/* ·········· DEQUE ·········· */
print("·········· DEQUE ··········")

object = MyObject("Lando N", 153)
deque.enqueue(object!)

object = MyObject("Charles L", 152)
deque.enqueue(object!)

object = MyObject("Carlos S", 145)
deque.enqueue(object!)

object = MyObject("Daniel R", 105)
deque.enqueue(object!)

object = MyObject("Pierre G", 92)
deque.enqueue(object!)

print("INITIAL OBJECTS: ")
print(deque.count)
deque.showObjects()
print(" ")

print("DEQUE... ")
otherObject = deque.dequeue()
print(deque.count)
deque.showObjects()
print(" ")

print("ADDING... ")
deque.addFirst(MyObject("Fernando A", 77))
print(deque.count)
deque.showObjects()
print(" ")

print("REMOVING... ")
deque.removeLast()
print(deque.count)
deque.showObjects()
print(" ")

print("SOME EXTRAS... ")
print(deque.getAt(3)!)
print(deque.indexOf(MyObject("Carlos S", 145))!)
print(deque.ocurrences(MyObject("Pierre G", 92))!)

print(" ")

/* ·········· STACK ·········· */
print("·········· STACK ··········")

object = MyObject("Mercedes", 546)
stack.push(object!)

object = MyObject("Red Bull", 541)
stack.push(object!)

object = MyObject("Ferrari", 297)
stack.push(object!)

object = MyObject("McLaren", 258)
stack.push(object!)

object = MyObject("Alphine", 137)
stack.push(object!)

object = MyObject("AlphaTauri", 112)
stack.push(object!)

print("INITIAL OBJECTS: ")
print(stack.count)
stack.showObjects()
print(" ")

print("PUSHING...")
stack.push(MyObject("Aston Martin", 77))
print(stack.count)
stack.showObjects()
print(" ")

print("POPPING...")
print(stack.pop()!)
print(stack.count)
stack.showObjects()
print(" ")

print("PEEKING...")
print(stack.peek()!)
print(stack.count)
stack.showObjects()

print(" ")

/* ·········· BTS ·········· */
print("·········· Binary Search Tree ··········")

print("INSERTING NODES...")
let tree = BinarySearchTree(node: 55)
tree.insert(node: 11)
tree.insert(node: 1)
tree.insert(node: 22)
tree.insert(node: 2)
tree.insert(node: 33)
tree.insert(node: 3)
tree.insert(node: 44)
tree.insert(node: 4)
tree.insert(node: 5)


print("We have inserted: \(tree.count) nodes")
print(" ")

print("TREE IN-ORDER:")
tree.inOrder { node in print("\(node) ", terminator: " ") }
print("\n")

print("TREE PRE-ORDER:")
tree.preOrder { node in print("\(node) ", terminator: " ") }
print("\n")

print("TREE POST-ORDER:")
tree.postOrder { node in print("\(node) ", terminator: " ") }
print("\n")

print("SEARCHING A NODE...")
var nodeToRemove = tree.search(node: 5)
print("We searched the node!")
print("REMOVING NODE...")
nodeToRemove?.remove()
tree.inOrder { node in print("\(node) ", terminator: " ") }
print(" ")
print("Now we have: \(tree.count) nodes")