import Foundation

typealias Totals = [People: Double]

extension Totals {
	mutating func people(_ whoOrdered: People, owe price: Double, to whoPaid: People) {
		self[whoPaid] = (self[whoPaid] ?? 0) - price
		self[whoOrdered] = (self[whoOrdered] ?? 0) + price
	}

	mutating func peoplePaidTaxOrTip(_ whoPaid: People, price: Double) {
		self[whoPaid] = (self[whoPaid] ?? 0) - price
		let split = price / Double(People.allCases.count)
		People.allCases.forEach { people in
			self[people] = (self[people] ?? 0) + split
		}
	}

	func mergedWith(other: [People: Double]) -> [People: Double] {
		other.reduce(into: self) { result, pair in
			let previous = result[pair.key] ?? 0
			result[pair.key] = previous + pair.value
		}
	}
}
