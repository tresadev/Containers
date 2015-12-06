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
    
    func isEmpty() -> Bool {
        return self.containers.isEmpty
    }
}