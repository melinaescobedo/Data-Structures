public class MyObject : Equatable, Comparable, CustomStringConvertible {
  var name : String
  var points : Int
  
  public var description: String {
    return name + "(" + String(points) + ")"
  }
   
  init(_ aName : String, _ anPoints : Int) {
    name = aName
    points = anPoints
  }
   
  public static func ==(lhs: MyObject, rhs: MyObject) -> Bool {
    return (lhs.points == rhs.points) && (lhs.name == rhs.name)
  }
   
  public static func <(lhs: MyObject, rhs: MyObject) -> Bool {
    return (lhs.name < rhs.name)
  }
   
}