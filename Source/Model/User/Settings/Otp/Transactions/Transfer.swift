import Foundation
import ObjectMapper

/// Transfer otp settings model.
public class Transfer: Mappable {

    /// A boolean indicating if the otp is enable for the transactions transfer process.
    public private(set) final var enabled: Bool?

    /**
      Constructor.

      - parameter enabled: A boolean indicating if the otp is enable for the transactions transfer process.
    */
    public init(enabled: Bool) {
        self.enabled = enabled
    }

    // MARK: Required by the ObjectMapper.

    /**
      Constructor.

      - parameter map: Mapping data object.
    */
    required public init?(_ map: Map) {
    }

    /**
      Maps the JSON to the Object.

      - parameter map: The object to map.
    */
    public func mapping(map: Map) {
        self.enabled <- map["enabled"]
    }

}