import XCTest

class CheckSplitterTests: XCTestCase {
	func testResultsAreCorrect() {
		let check = Check.testCheck()
		let result = CheckSplitter.result(for: check)
		let expected = CheckResult(
			check: check,
			totals: [
				.daltonAndLindsey: -14,
				.philipAndAmanda: 8,
				.drewAndVanessa: 6
			]
		)
		XCTAssertEqual(result, expected)
	}
}
