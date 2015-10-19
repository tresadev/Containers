import Quick
import Nimble

@testable import Containers

class CrainMock: Crain {
    var called: [(String, Int)] = []
    
    func raise(container: Container) {
        self.called.append(("raise", container.containerId))
    }
    
    func lower(container: Container) {
        self.called.append(("lower", container.containerId))
    }
    
    func getCalledAtIndex(index: Int) -> (String, Int)? {
        guard self.called.count > 0 else { return nil }
        
        return called[index]
    }
}

class CraneOperatorTests: QuickSpec {
    override func spec() {
        
        describe("Crane operator") {
            
            it("takes container and puts it on the stack") {
                
                let stack = Stack()
                let container = Container(containerId: 101)
                
                let crainMock = CrainMock()
                
                let crainOperator = CrainOperator(withStack: stack, withCrain: crainMock)
                crainOperator.take(container)
                
                expect(crainMock.called.count) == 2
                expect(crainMock.getCalledAtIndex(0)?.0) == "raise"
                expect(crainMock.getCalledAtIndex(0)?.1) == 101
                expect(crainMock.getCalledAtIndex(1)?.0) == "lower"
                expect(crainMock.getCalledAtIndex(1)?.1) == 101
                expect(stack.top()) === container
            }
        }
    }
}
