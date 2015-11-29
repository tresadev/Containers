import Quick
import Nimble
import Containers

@testable import Containers

class SwiftCraneTests: QuickSpec {

    override func spec() {

        describe("Swift crane"){

            it("can be created") {
                expect(SwiftCrane()).toNot(beNil())
            }
            
            it("able to lower and raise the container") {
                let crane = SwiftCrane()

                let containerLowered: ContainerBrandProtocol = NedlloydContainer(label: 1)
                crane.lower(containerLowered);
                
                expect(containerLowered.brand).to(match(crane.raise().brand))
            }

            it("able to stack different container types") {
                let crane = SwiftCrane()

                let nedlloydContainer: ContainerBrandProtocol = NedlloydContainer(label: 1)
                crane.lower(nedlloydContainer);
                expect(crane.top().brand).to(match(nedlloydContainer.brand))

                let maerskContainer : ContainerBrandProtocol = MaerskContainer(id:2);
                crane.lower(maerskContainer);
                expect(crane.top().brand).to(match(maerskContainer.brand))

                let kLineContainer : ContainerBrandProtocol = KLineContainer(serialNumber:3);
                crane.lower(kLineContainer);
                expect(crane.top().brand).to(match(kLineContainer.brand))

            }
        }
    }
}