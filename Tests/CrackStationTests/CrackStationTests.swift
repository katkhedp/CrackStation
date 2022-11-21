import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testMVPsha1_3() throws {

        let inputhash = "e1e154e5261dc0011fd40e84d2cad1566e9ccfe3"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "a!A")
    }
}
