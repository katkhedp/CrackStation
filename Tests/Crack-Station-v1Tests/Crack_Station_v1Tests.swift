import XCTest
@testable import Crack_Station_v1

final class Crack_Station_v1Tests: XCTestCase {
    func testExample() throws {
        let crack_station = Crack_Station_v1()
        let lookupTable = try crack_station.loadDictionaryFromDisk()
        
    }
}
