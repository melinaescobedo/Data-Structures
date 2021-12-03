public class Stack<AnyObject: Equatable> {
  
  private var data : Array<AnyObject>
  
  public var count : Int {
    return data.count
  }

  public var isEmpty : Bool {
    return data.isEmpty
  }

   init() {
    data = []
  }

  init(_ array : Array<AnyObject>) {
    data = array
  }

  func push(_ object: AnyObject) {
    return data.append(object)
  }
  
  func pop() -> AnyObject? {
    return data.popLast()
  }

  func peek() -> AnyObject? {
    return data.last
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
