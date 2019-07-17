extension Check {
	static func testCheck() -> Check {
		// Total: 21
		Check(restaurant: "foo", whoPaid: .daltonAndLindsey)
			.item("item1", price: 5, whoOrdered: .daltonAndLindsey)
			.item("item2", price: 4, whoOrdered: .drewAndVanessa)
			.item("item3", price: 6, whoOrdered: .philipAndAmanda)
			.tax(price: 3)
			.tip(price: 3)
	}
}
