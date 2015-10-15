import Quick
import Nimble
import Containers

class StackTests: QuickSpec {

    override func spec() {

        describe("stack") {

            it("can be created") {
                expect(Stack()).toNot(beNil())
            }

        }
    }
}