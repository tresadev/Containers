import Foundation

public class Stack {
    
    var container: [Container] = []
    
    public init() {
        
    }
    
    func push(container: Container) {
        self.container.insert(container, atIndex: 0)
    }
    
    func pop() -> Container? {
        guard self.container.count > 0 else { return nil }
        
        return self.container.removeFirst()
    }
    
    func top() -> Container? {
        return container.first
    }
}
