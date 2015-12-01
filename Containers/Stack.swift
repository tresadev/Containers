import Foundation

public class Stack {

    internal var containers:[ContainerBrandProtocol] = []
    
    public init() {

    }
    
    func push(container: ContainerBrandProtocol) {
        self.containers .append(container)
    }
    
    func pop() -> ContainerBrandProtocol {
        return self.containers .removeLast()
    }
    
    func top() -> ContainerBrandProtocol {
        return (self.containers.last)!
    }
}