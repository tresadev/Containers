import Foundation

public class Stack {
    
    var count:Int = 0
    
    var container: Container?
    
    public init() {
        
    }
    
    func push(container: Container) {
        self.count++
        self.container = container
    }
    
    func pop() -> Container? {
        guard self.count > 0 else { return nil }
        
        self.count--
        return self.container
    }
    
}