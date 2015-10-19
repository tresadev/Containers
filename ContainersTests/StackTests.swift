import Quick
import Nimble
import Containers

@testable import Containers

class StackTests: QuickSpec {
    
    override func spec() {
        
        describe("stack") {
            
            it("can be created") {
                
                expect(Stack()).toNot(beNil())
            }
            
            it("allows popping from an empty stack without doing much of a harm") {
                let stack = Stack()
                
                expect(stack.pop()).to(beNil())
            }
            
            it("allows pushing and popping a single container to the stack") {
                let container = Container(containerId: 101)
                
                let stack = Stack()
                
                stack.push(container)
                
                expect(stack.pop()) === container
                expect(stack.pop()).to(beNil())
            }
            
            it("top from an empty stack returns nil") {
                expect(Stack().top()).to(beNil())
            }
            
            it("pushing two containers") {
                let container1 = Container(containerId: 101)
                let container2 = Container(containerId: 102)
                
                let stack = Stack()
                
                stack.push(container1)
                expect(stack.top()) === container1
                
                stack.push(container2)
                expect(stack.top()) === container2
            }
            
            it("popping two previously pushed containers") {
                let container1 = Container(containerId: 101)
                let container2 = Container(containerId: 102)
                
                let stack = Stack()
                
                stack.push(container1)
                stack.push(container2)
                
                expect(stack.pop()) === container2
                expect(stack.pop()) === container1
                expect(stack.pop()).to(beNil())
            }
            
        }
    }
}
