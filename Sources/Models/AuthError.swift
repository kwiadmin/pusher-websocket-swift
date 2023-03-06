import Foundation

public struct AuthError: Error {
    public enum Kind {
        case notConnected
        case noMethod
        case couldNotBuildRequest
        case invalidAuthResponse
        case requestFailure
    }
    
    public init(kind: Kind, message: String? = nil, response: URLResponse? = nil, data: String? = nil, error: NSError? = nil) {
        self.kind = kind
        self.message = message
        self.response = response
        self.data = data
        self.error = error
    }
    
    
    public let kind: Kind
    public var message: String?
    public var response: URLResponse?
    public var data: String?
    public var error: NSError?
}
