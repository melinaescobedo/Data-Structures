public class Queue<AnyObject: Equatable> {

  private var data : Array<AnyObject>
  
  public var count : Int {
    return data.count
  }

  public var isEmpty : Bool {
    return data.isEmpty
  }

  public var first : AnyObject? {
    return data.first
  }

  public var last :  AnyObject? {
    return data.last
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
      //exit(0)
    }
    else {
      data.append(object!)
    }
  }

  func dequeue() -> AnyObject? {
    if(isEmpty) {
      print("Can't remove from an empty queue")
      return nil
    }
    else {
      return data.remove(at : 0)
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

