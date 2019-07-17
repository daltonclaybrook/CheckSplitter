import Foundation

let checkResults = Check.allChecks().map { check in
	CheckResult(
		check: check,
		totals: check.items.reduce(into: [:]) { result, record in
			switch record {
			case .item(_, let price, let whoOrdered):
				result.people(whoOrdered, owe: price, to: check.whoPaid)
			case .taxTip(let price):
				result.peoplePaidTaxOrTip(check.whoPaid, price: price)
			}
		}
	)
}

print(checkResults.resultDescription)
