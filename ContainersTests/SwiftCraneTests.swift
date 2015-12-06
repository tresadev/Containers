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

                let maerskContainer : ContainerBrandProtocol = MaerskContainer(id:2);
                crane.lower(maerskContainer);

                let kLineContainer : ContainerBrandProtocol = KLineContainer(serialNumber:3);
                crane.lower(kLineContainer);
                
                expect(kLineContainer.brand).to(match(crane.raise().brand))
                expect(maerskContainer.brand).to(match(crane.raise().brand))
                expect(nedlloydContainer.brand).to(match(crane.raise().brand))

            }
        }
    }
}