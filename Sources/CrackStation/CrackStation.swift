import Foundation
public protocol Decrypter {
    init()
    func decrypt(shaHash: String) -> String?
}
public struct CrackStation: Decrypter {
    var lookupTable: Dictionary <String,String> = [:]
    private init() {
        do{
            guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else {return}
            let data = try Data(contentsOf: path)
            let jsonOutput = try JSONSerialization.jsonObject(with: data) as? Dictionary<String, String>
            lookupTable = jsonOutput ?? [:]
        } catch {
                print("unable to load from dictionary")
        }
    }
    private func decrypt(shaHash: String) -> String? {
        let decryptedPassword = lookupTable[shaHash]
        return decryptedPassword
    }  
}