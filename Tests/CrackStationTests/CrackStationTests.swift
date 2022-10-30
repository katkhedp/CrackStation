import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testExample() throws {
        let crack_station = CrackStation()
        let lookupTable = try crack_station.loadDictionaryFromDisk()
        
    }
}
