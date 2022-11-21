import Foundation

public protocol Decrypter {
    init()
    func decrypt(shaHash: String) -> String?
}
public struct CrackStation: Decrypter {

    var lookupTable: Dictionary <String,String> = [:]
    public init() {
        do{
            guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else {return}
            let data = try Data(contentsOf: path)
            let jsonoutput = try JSONSerialization.jsonObject(with: data) as? Dictionary<String, String>
            lookupTable = jsonoutput ?? [:]
        } catch {
                print("unable to load from dictionary")
        }
    }
    
    public func decrypt(shaHash: String) -> String? {
        let pass = lookupTable[shaHash]
        return pass
    }  
}