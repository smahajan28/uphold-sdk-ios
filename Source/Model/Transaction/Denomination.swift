import Foundation
import ObjectMapper

/// Denomination model.
public class Denomination: Mappable {

    /// The amount of the transaction.
    public private(set) var amount: String?

    /// The currency of the transaction.
    public private(set) var currency: String?

    /// The pair of the transaction.
    public private(set) var pair: String?

    /// The rate of the transaction.
    public private(set) var rate: String?

    /**
      Constructor.

      - parameter amount: The amount of the transaction.
      - parameter currency: The currency of the transaction.
      - parameter pair: The pair of the transaction.
      - parameter rate: The rate of the transaction.
    */
    public init(amount: String, currency: String, pair: String, rate: String) {
        self.amount = amount
        self.currency = currency
        self.pair = pair
        self.rate = rate
    }

    // MARK: Required by the ObjectMapper.

    /**
      Constructor.
    */
    required public init?(_ map: Map) {
    }

    /// Maps the JSON to the Object.
    public func mapping(map: Map) {
        amount  <- map["amount"]
        currency <- map["currency"]
        pair <- map["pair"]
        rate <- map["rate"]
    }

}