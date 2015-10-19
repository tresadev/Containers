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
            
            it("is it empty after intialization") {
                
                expect(Stack().count) == 0
            }
            
            it("allows popping from an empty stack without doing much of a harm") {
                let stack = Stack()
                
                expect(stack.pop()).to(beNil())
                expect(stack.count) == 0
            }
            
            it("allows pushing and popping a single container to the stack") {
                let container = Container(containerId: 101)
                
                let stack = Stack()
                
                stack.push(container)
                
                expect(stack.count) == 1
                expect(stack.pop()) === container
                expect(stack.count) == 0
            }
        }
    }
}
