import UIKit
// The goal of this excercise is to create a function to print the values of a linked list in reverse using recursion

public class Node<Int> {
    
    var value: Int
    var next: Node? // singly linked
    var previous: Node? // doubly linked
    init(_ value:Int) {
        self.value = value
    }
}
// implementing custom string convertible
extension Node: CustomStringConvertible {
    
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}

public struct LinkedList<Int> {

     public var head: Node<Int>?
     public var tail: Node<Int>?

    public init() { }

    public var isEmpty: Bool {
    head == nil
    
    }
    public mutating func append(_ value: Int) {
        let newNode = Node(value)
        
        guard let lastNode = tail else{
            head = newNode
            tail = head
            return
        }
        
    public mutating func push(_ value: Int) {
        head = Node(value: value, next: head)
        if tail == nil {
        tail = head
       }
    }
        
// Recursion
        
func printInReverse<Int>(_ node: Node<Int>?) {
    guard let node = node else { return }
    printInReverse(node.next)
    print(node.value)
}

func printInReverse<Int>(_ list: LinkedList<Int>) {
    printInReverse(list.head)
}

    var list = LinkedList<Int>()
        
        list.push(3 as! Int)
        list.push(2 as! Int)
        list.push(1 as! Int)

print("Original list: \(list)")
print("Printing in reverse:")
printInReverse(list)
    
}
}
