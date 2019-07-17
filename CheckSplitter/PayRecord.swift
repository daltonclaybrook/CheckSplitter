import Foundation

enum PayRecord: Equatable {
	case item(_ description: String, price: Double, whoOrdered: People)
	case taxTip(price: Double)
}

extension PayRecord {
	var price: Double {
		switch self {
		case .item(_, let price, _),
				 .taxTip(let price):
			return price
		}
	}
}
