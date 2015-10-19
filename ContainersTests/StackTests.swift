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
                
                expect(Stack().count).to(equal(0))
            }
            
        }
    }
}