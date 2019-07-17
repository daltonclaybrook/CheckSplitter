import XCTest

class CheckResultTests: XCTestCase {
	func testCombinedTotalsMergesCorrectly() {
		let results = CheckSplitter.results(for: [.testCheck(), .testCheck()])
		let totals = results.combinedTotals
		XCTAssertEqual(totals[.daltonAndLindsey], -14 * 2)
		XCTAssertEqual(totals[.drewAndVanessa], 6 * 2)
		XCTAssertEqual(totals[.philipAndAmanda], 8 * 2)
	}
}
