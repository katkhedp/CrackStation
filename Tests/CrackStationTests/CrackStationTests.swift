import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func test_example() throws {
        let inputHash = "d9f0509fb7e8bd7d4c4b627dfec70c0c0e01fb34"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        XCTAssertEqual(decrypted, "cba")
    }
}
