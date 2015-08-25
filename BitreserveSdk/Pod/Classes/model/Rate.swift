import Foundation
import ObjectMapper

/// Rate model.
public class Rate: Mappable {
    
    /// The rate ask.
    public private(set) var ask: String?
    
    /// The rate bid.
    public private(set) var bid: String?
    
    /// The rate currency.
    public private(set) var currency: String?
    
    /// The rate pair.
    public private(set) var pair: String?

    /**
        Constructor.
    */
    public init(){
    }

    /**
        Constructor.
    
        :param: ask The rate ask.
        :param: bid The rate bid.
        :param: currency The rate currency.
        :param: pair The rate pair.
    */
    public init(ask: String, bid: String, currency: String, pair: String) {
        self.ask = ask
        self.bid = bid
        self.currency = currency
        self.pair = pair
    }

    // MARK: Functions required by the ObjectMapper

    /// Returns a Mappable Rate.
    public class func newInstance(map: Map) -> Mappable? {
        return Rate()
    }

    /// Maps the JSON to the Object.
    public func mapping(map: Map) {
        ask  <- map["ask"]
        bid <- map["bid"]
        currency <- map["currency"]
        pair <- map["pair"]
    }
    
}