import Foundation

protocol ContainerBrandProtocol {
    var brand: String {get}
    var container_id: Int32 {get}
}

extension NedlloydContainer : ContainerBrandProtocol {
    var brand: String {
        return "Nedlloyd"
    }
    
    var container_id: Int32 {
        return self.label
    }
}

extension MaerskContainer : ContainerBrandProtocol {
    var brand: String {
        return "Maersk"
    }
    
    var container_id: Int32 {
        return self.id
    }
}

extension KLineContainer : ContainerBrandProtocol {
    var brand: String {
        return "kLine"
    }
    
    var container_id: Int32 {
        return self.serialNumber
    }
}

public class NedlloydContainer{ // do not touch
    public let label: Int32

    public init(label: Int32) {
        self.label = label
    }
}

public class MaerskContainer{ // do not touch
    public let id: Int32

    public init(id: Int32) {
        self.id = id
    }
}

public class KLineContainer{ // do not touch
    public let serialNumber: Int32

    public init(serialNumber: Int32) {
        self.serialNumber = serialNumber
    }
}