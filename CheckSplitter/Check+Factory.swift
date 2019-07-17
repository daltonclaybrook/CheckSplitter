import Foundation

extension Check {
	static func allChecks() -> [Check] {
		[
			Check.ipuddo,
			Check.oldTbilisiGarden,
			Check.friedmans,
			Check.amsterdam,
			Check.walkers,
			Check.drunkenHorse,
		]
	}
}

extension Check {
	private static let ipuddo = Check(restaurant: "Ipuddo", whoPaid: .philipAndAmanda)
		.item("Pork Buns", price: 9.0, whoOrdered: .philipAndAmanda)
		.item("Pork Buns", price: 9.0, whoOrdered: .daltonAndLindsey)
		.item("Pork Buns", price: 9.0, whoOrdered: .drewAndVanessa)
		.item("Shiromaru + 2 extras", price: 20.0, whoOrdered: .philipAndAmanda)
		.item("Shiromaru", price: 16.0, whoOrdered: .daltonAndLindsey)
		.item("Shiromaru", price: 16.0, whoOrdered: .drewAndVanessa)
		.item("Shiromaru", price: 16.0, whoOrdered: .philipAndAmanda)
		.item("Akamaru + egg", price: 18.0, whoOrdered: .daltonAndLindsey)
		.item("Karaka Spicy + egg", price: 18.0, whoOrdered: .drewAndVanessa)
		.tax(price: 11.63)
		.tip(price: 26.20)
		.total(price: 168.83)

	private static let oldTbilisiGarden = Check(restaurant: "Old Tbilisi Garden", whoPaid: .philipAndAmanda)
		.item("1/3 Adjaruli Khachapuri", price: 6.67, whoOrdered: .philipAndAmanda)
		.item("1/3 Adjaruli Khachapuri", price: 6.67, whoOrdered: .daltonAndLindsey)
		.item("1/3 Adjaruli Khachapuri", price: 6.67, whoOrdered: .drewAndVanessa)
		.item("1/3 Imeruli Khachapuri", price: 6.00, whoOrdered: .philipAndAmanda)
		.item("1/3 Imeruli Khachapuri", price: 6.00, whoOrdered: .daltonAndLindsey)
		.item("1/3 Imeruli Khachapuri", price: 6.00, whoOrdered: .drewAndVanessa)
		.item("Stella Artois", price: 7.00, whoOrdered: .philipAndAmanda)
		.item("Stella Artois", price: 7.00, whoOrdered: .daltonAndLindsey)
		.item("Coffee", price: 5.00, whoOrdered: .drewAndVanessa)
		.tax(price: 5.06)
		.tip(price: 12.40)
		.total(price: 74.47)

	private static let friedmans = Check(restaurant: "Friedman's", whoPaid: .daltonAndLindsey)
		.item("Sake Mary", price: 9.00, whoOrdered: .daltonAndLindsey)
		.item("Sake Mary", price: 9.00, whoOrdered: .drewAndVanessa)
		.item("Coffee", price: 4.00, whoOrdered: .drewAndVanessa)
		.item("Chix Chilaquiles", price: 17.00, whoOrdered: .drewAndVanessa)
		.item("B.E.L.T", price: 13.00, whoOrdered: .philipAndAmanda)
		.item("B.E.L.T", price: 13.00, whoOrdered: .philipAndAmanda)
		.item("B.E.L.T", price: 13.00, whoOrdered: .daltonAndLindsey)
		.item("Nova Benny", price: 17.00, whoOrdered: .daltonAndLindsey)
		.item("Grilled Cheese", price: 14.00, whoOrdered: .drewAndVanessa)
		.item("Tomato Soup", price: 3.00, whoOrdered: .drewAndVanessa)
		.tax(price: 9.94)
		.tip(price: 24.0)
		.total(price: 145.94)

	private static let amsterdam = Check(restaurant: "Amsterdam Ale House", whoPaid: .daltonAndLindsey)
		.item("Five Boroughs (Beer)", price: 9.00, whoOrdered: .daltonAndLindsey)
		.item("Five Boroughs (Beer)", price: 9.00, whoOrdered: .daltonAndLindsey)
		.item("Five Boroughs (Beer)", price: 9.00, whoOrdered: .philipAndAmanda)
		.item("Five Boroughs (Beer)", price: 9.00, whoOrdered: .philipAndAmanda)
		.item("Five Boroughs (Beer)", price: 9.00, whoOrdered: .drewAndVanessa)
		.item("Five Boroughs (Beer)", price: 9.00, whoOrdered: .drewAndVanessa)
		.item("Threes (Beer)", price: 9.00, whoOrdered: .daltonAndLindsey)
		.item("Threes (Beer)", price: 9.00, whoOrdered: .daltonAndLindsey)
		.item("Threes (Beer)", price: 9.00, whoOrdered: .daltonAndLindsey)
		.item("Threes (Beer)", price: 9.00, whoOrdered: .philipAndAmanda)
		.item("Jameson", price: 9.00, whoOrdered: .drewAndVanessa)
		.item("Ommegang (Beer)", price: 9.00, whoOrdered: .philipAndAmanda)

	private static let walkers = Check(restaurant: "Walker's", whoPaid: .daltonAndLindsey)
		.item("Other Half IPA", price: 9.00, whoOrdered: .daltonAndLindsey)
		.item("Other Half IPA", price: 9.00, whoOrdered: .daltonAndLindsey)
		.item("Other Half IPA", price: 9.00, whoOrdered: .daltonAndLindsey)
		.item("Other Half IPA", price: 9.00, whoOrdered: .drewAndVanessa)
		.item("Other Half IPA", price: 9.00, whoOrdered: .drewAndVanessa)
		.item("Founders IP", price: 9.00, whoOrdered: .philipAndAmanda)
		.item("Downeast Cider", price: 8.00, whoOrdered: .philipAndAmanda)
		.item("Jameson", price: 11.00, whoOrdered: .drewAndVanessa)
		.tax(price: 6.48)
		.tip(price: 16.0)
		.total(price: 95.48)

	private static let drunkenHorse = Check(restaurant: "The Drunken Horse", whoPaid: .drewAndVanessa)
		.item("Founders All Day IPA", price: 8.00, whoOrdered: .daltonAndLindsey)
		.item("Founders All Day IPA", price: 8.00, whoOrdered: .daltonAndLindsey)
		.item("Founders All Day IPA", price: 8.00, whoOrdered: .drewAndVanessa)
		.item("Founders All Day IPA", price: 8.00, whoOrdered: .drewAndVanessa)
		.item("Founders All Day IPA", price: 8.00, whoOrdered: .philipAndAmanda)
		.item("Rose Spritz", price: 12.00, whoOrdered: .daltonAndLindsey)
		.item("Rose Spritz", price: 12.00, whoOrdered: .philipAndAmanda)
		.item("Rose Spritz", price: 12.00, whoOrdered: .drewAndVanessa)
		.tax(price: 6.75)
		.tip(price: 24.0)
		.total(price: 106.75)
}
