# CrackStation - Decrypter
CrackStation is a library which can be used to decrypt one letter or two letter passwords encoded in SHA1 and SHA256.

# Overview
The library can be used to setup password authetication, use as a decryption setup for a client - server communication, stored encrypted data over public devices, etc. This library can be also used to cross-verify and test other decrypter softwares for their correctness.

# Mission Statement
This library is solely published to serve educational purposes and understand the working of SHA1 and SHA256 with encorparting software engineering standards during the process of development. However, any usage beyond learning is not intended like executing hacking, or trying to crack unauthorized passwords.

# Installation
- The Swift Package Manager is "a tool for managing the distribution of swift code. It's integrated with the swift build system to automate the process of downloading, compiling and linking dependencies."

Once you have your Swift package set up, add CrackStation to the list of dependencies in your Package.swift file:

''''
dependencies: [
    .package(url: "https://github.com/katkhedp/CrackStation", .upToNextmajor(from: "2.1.1"))
]
''''


# Usage

The cracstation implementation contanins two function init() and decrypt(). Their usage is as below:

init() -> This function is a constructor which loads the pre built dictionary in the program which conatains all the required key-pairs of encrypted passwords and their actual value.

decrypt() -> This function accepts a parameter which is a encrypted hash string and returns decrypted password


''''

Call-site

final class CrackStationTests: XCTestCase {
    func test_example() throws {

        let inputhash = "d9f0509fb7e8bd7d4c4b627dfec70c0c0e01fb34"
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        print(decrypted)
    }
}



Output:
cba

''''


# Stable release
- The latest stable release for the applciation is "2.1.1".

# Author
- The project is developed and uploaded by Pushpak Vijay Katkhede




