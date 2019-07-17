import XCTest

final class TotalsTests: XCTestCase {
	func testPeopleCallIsSubtractedFromWhoPaid() {
		var totals: [People: Double] = [.daltonAndLindsey: 10]
		totals.people(.philipAndAmanda, owe: 5, to: .daltonAndLindsey)
		XCTAssertEqual(totals[.daltonAndLindsey], 5)
	}

	func testPeopleCallIsAddedToWhoOrdered() {
		var totals: [People: Double] = [.daltonAndLindsey: 10]
		totals.people(.philipAndAmanda, owe: 5, to: .daltonAndLindsey)
		XCTAssertEqual(totals[.philipAndAmanda], 5)
	}

	func testTaxCallIsSubtractedFromWhoPaid() {
		var totals: [People: Double] = [.daltonAndLindsey: 10]
		totals.peoplePaidTaxOrTip(.philipAndAmanda, price: 3)
		XCTAssertEqual(totals[.philipAndAmanda], -2)
	}

	func testTaxCallAddsOneThirdAmountToEveryone() {
		var totals: [People: Double] = [.daltonAndLindsey: 10]
		totals.peoplePaidTaxOrTip(.philipAndAmanda, price: 3)
		XCTAssertEqual(totals[.daltonAndLindsey], 11)
		XCTAssertEqual(totals[.drewAndVanessa], 1)
	}

	func testMergeWorksCorrectly() {
		let totals1: [People: Double] = [.daltonAndLindsey: 10, .philipAndAmanda: 2]
		let totals2: [People: Double] = [.philipAndAmanda: 3, .drewAndVanessa: 7]
		let merged = totals1.mergedWith(other: totals2)
		let expected: [People: Double] = [
			.daltonAndLindsey: 10,
			.philipAndAmanda: 5,
			.drewAndVanessa: 7
		]
		XCTAssertEqual(merged, expected)
	}
}
