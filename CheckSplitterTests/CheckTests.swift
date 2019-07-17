import XCTest

final class CheckTests: XCTestCase {
	func testSummedTotalIsCorrect() {
		let total = Check.testCheck().summedTotal
		XCTAssertEqual(total, 21)
	}

	func testItemCallAddsItem() {
		let check = Check.testCheck()
			.item("test-item", price: 99, whoOrdered: .philipAndAmanda)
		let lastItem = check.items.last!
		XCTAssertEqual(lastItem, .item("test-item", price: 99, whoOrdered: .philipAndAmanda))
	}

	func testTaxCallAddsTax() {
		let check = Check.testCheck()
			.tax(price: 99)
		let lastItem = check.items.last!
		XCTAssertEqual(lastItem, .taxTip(price: 99))
	}
}
