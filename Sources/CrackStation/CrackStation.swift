import Foundation

public protocol Decrypter {
    init()

   func loadDictionaryFromDisk() throws -> [String : String] {
        guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }

        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)

        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookupTable
        } else {
            return [:]
        }
    func decrypt(shaHash: String) -> String?
}

public struct CrackStation: Decrypter {
    

    public init() {
    }
    
    
    }

    public func decrypt(shaHash: String) -> String? {
        do{
                let lookupTable = try loadDictionaryFromDisk()
                let ans = lookupTable[shaHash] ?? nil
                return ans
            } catch {
                return nil
            }
    }

}
