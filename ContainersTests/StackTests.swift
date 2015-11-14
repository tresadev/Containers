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

            it("stack is empty on intialization") {
                expect(Stack().containersArray().isEmpty).to(beTruthy())
            }
            
            it("push the container to the top of the stack and pop the same") {
                let pushedContainer = NedlloydContainer(label: 1);
                let stack = Stack()
                stack.push(pushedContainer);
                let poppedConatiner  = stack.pop()
                expect(pushedContainer.container_id).to(equal(poppedConatiner.container_id))
            }
        }
    }
}