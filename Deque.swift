public class Deque<AnyObject: Equatable> {
  
  private var data : Array<AnyObject>

  public var count: Int {
    return data.count
  }

  public var isEmpty: Bool {
    return data.isEmpty
  }

  init() {
    data = []
  }

  init(_ array : Array<AnyObject>) {
    data = array
  }

  func enqueue(_ object: AnyObject?) {
    if(object == nil) {
      print("Can't add NIL to the queue")
    }
    else {
      data.append(object!)
    }
  }

  /*
  func enqueue(_ object: AnyObject) {
    data.append(object)
  }
  */

  func dequeue() -> AnyObject? {
    if(isEmpty) {
      print("Can't remove from an empty queue")
      return nil
    }
    else {
      return data.remove(at : 0)
    }
  }

  /*
  func dequeue() -> AnyObject? {
    if isEmpty {
      return nil
    } else {
      return data.removeFirst()
    }
    //isEmpty ? nil : data.removeFirst()
  }
  */

  func addFirst(_ object: AnyObject) {
    data.insert((object), at: 0)
  }

  /*func removeLast(_ index : Int) -> AnyObject {
    return data[index]
  }*/

  func removeLast() -> AnyObject? {
    if isEmpty {
      return nil
    } else {
      return data.removeLast()
    }
  }

  func getAt(_ index : Int) -> AnyObject? {
    return data[index]
  }

  func indexOf(_ object : AnyObject?) -> Int? {
    if(object != nil) {
    return data.firstIndex(of: object!)
    } else {
        print("Can't find a NIL object")
      return nil
      }
  }
  
  func ocurrences(_ object : AnyObject ) -> Int? {
    return data.reduce(0) { $1 == object ? $0 + 1 : $0 }
  }

  func showObjects() {
    for object in data {
      print(object)
    }
  }

}
