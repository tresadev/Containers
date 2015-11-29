//  Copyright (c) 2015 Koninklijke Philips N.V. All rights reserved.

import Foundation

public class SwiftCrane {
    
    private var stack :Stack;
    
    public init() {
        self.stack = Stack();
    }
    
    func lower(container: ContainerBrandProtocol) {
        lower_container(container.container_id);
        stack.push(container);
    }

    func raise() -> ContainerBrandProtocol {
        let raisedContainer : ContainerBrandProtocol = self.stack.pop()
        raise_container(raisedContainer.container_id);
        return raisedContainer;
    }
    
    func top() -> ContainerBrandProtocol {
        return self.stack.top();
    }
}