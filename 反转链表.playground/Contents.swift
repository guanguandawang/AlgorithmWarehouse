import UIKit

//题目：定义一个函数，输入一个链表的头结点，反转该链表并输出翻转后链表的头结点。
class Node{
    let key : Int
    var next : Node?
    init(key : Int ,next : Node?) {
        self.key = key
        self.next = next
    }
}

func turnNode(nodeHead : Node) -> Node?{
    var nowNode : Node? = nodeHead //记录当前节点指针
    var aboveNode : Node? = nil    //记录前一个节点指针
    while nowNode != nil {
        let nextNode = nowNode!.next //记录后面的节点
        nowNode?.next = aboveNode
        aboveNode = nowNode
        nowNode = nextNode
        if nextNode == nil {
            return aboveNode!
        }
    }
    return nil;
}

//测试
let NodeHead = Node(key: 1, next: Node(key: 2, next: Node(key: 3, next: Node(key: 4, next: nil))))
let newNodeHead = turnNode(nodeHead: NodeHead)
print(newNodeHead!.key)


