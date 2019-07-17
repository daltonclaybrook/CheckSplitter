import Foundation

extension Array where Element == CheckResult {
	var resultDescription: String {
		let descriptions = map { result -> String in
			let checkDescription =
			"""
			Restaurant: \(result.check.restaurant)
			Who Paid: \(result.check.whoPaid.rawValue)
			Total: $\(String(format: "%.2f", result.check.summedTotal))
			---
			"""
			let balancesString = result.totals.compactMap { pair in
				"\(pair.key.rawValue): $\(String(format: "%.2f", pair.value))"
			}.joined(separator: "\n")
			return "\(checkDescription)\n\(balancesString)"
		}

		let allChecksString = descriptions.joined(separator: "\n\n\n")
		let combinedTotals = reduce(Totals()) { fullResult, checkResult in
			fullResult.mergedWith(other: checkResult.totals)
		}
		let totalsString = combinedTotals.map { pair -> String in
			"People: \(pair.key.rawValue): $\(String(format: "%.2f", pair.value))"
		}.joined(separator: "\n")

		return "\(allChecksString)\n\n\n===Grand Totals===\n\(totalsString)"
	}
}
