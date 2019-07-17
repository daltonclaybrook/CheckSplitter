
import Foundation

struct Check {
	let restaurant: String
	let whoPaid: People
	let items: [PayRecord]

	init(restaurant: String, whoPaid: People, items: [PayRecord] = []) {
		self.restaurant = restaurant
		self.whoPaid = whoPaid
		self.items = items
	}
}

struct CheckResult {
	let check: Check
	let totals: Totals
}

extension Check {
	var summedTotal: Double {
		items.reduce(0) { $0 + $1.price }
	}

	func item(_ description: String, price: Double, whoOrdered: People) -> Check {
		let items = self.items + [.item(description, price: price, whoOrdered: whoOrdered)]
		return Check(restaurant: restaurant, whoPaid: whoPaid, items: items)
	}

	func tax(price: Double) -> Check {
		taxTip(price: price)
	}

	func tip(price: Double) -> Check {
		taxTip(price: price)
	}

	func total(price: Double) -> Check {
		let sum = summedTotal
		if abs(price - sum) >= 0.00001 {
			fatalError("Total specified ($\(price) does not match the summed total of items ($\(sum)")
		}
		return self
	}

	private func taxTip(price: Double) -> Check {
		Check(restaurant: restaurant, whoPaid: whoPaid, items: items + [.taxTip(price: price)])
	}
}
