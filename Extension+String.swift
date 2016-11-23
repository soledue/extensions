import Foundation

protocol StringProtocol {
    var string: String { get }
}

extension StringProtocol {
    var string: String { return self as! String }
}

extension String: StringProtocol { }

extension Optional where Wrapped: StringProtocol {
    var safe: String {
        return self as! String? ?? ""
    }
}
