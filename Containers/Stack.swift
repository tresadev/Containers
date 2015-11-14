import Foundation

public class Stack {

    private var containers:[ContainerBrandProtocol] = []
    
    public init() {

    }
    
    func push(container: ContainerBrandProtocol) {
        self.containers .append(container)
    }
    
    func pop() -> ContainerBrandProtocol {
        return self.containers .removeLast()
    }
    
    func objectAt(index:Int) -> ContainerBrandProtocol {
        return self.containers[index]
    }
    
    func containersArray() -> Array<ContainerBrandProtocol>{
        return self.containers
    }
}