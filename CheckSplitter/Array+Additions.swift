import Foundation

extension Array where Element == CheckResult {
	var combinedTotals: Totals {
		reduce(Totals()) { fullResult, checkResult in
			fullResult.mergedWith(other: checkResult.totals)
		}
	}

	var resultDescription: String {
		let descriptions = map { result -> String in
			let checkDescription =
			"""
			Restaurant: \(result.check.restaurant)
			Who Paid: \(result.check.whoPaid.rawValue)
			Check Total: $\(String(format: "%.2f", result.check.summedTotal))
			---
			"""
			let balancesString = result.totals.compactMap { pair in
				"\(pair.key.rawValue): $\(String(format: "%.2f", pair.value))"
			}.joined(separator: "\n")
			return "\(checkDescription)\n\(balancesString)"
		}

		let allChecksString = descriptions.joined(separator: "\n\n\n")
		let totalsString = combinedTotals.map { pair -> String in
			"\(pair.key.rawValue): $\(String(format: "%.2f", pair.value))"
		}.joined(separator: "\n")

		return """
		A positive dollar amount below means the person owes money.
		A negative (-) dollar amount means they are owed money.

		\(allChecksString)

		============
		Grand Totals
		============

		\(totalsString)

		"""
	}
}
