# CrackStation - Decrypter
CrackStation is a library which can be used to decrypt one letter,two letter or three letter passwords including special character (?,!) conforming to the regex  [A-Za-z0-9?!]{1,3} encoded in SHA1 and SHA256.

## Overview
The library can be used to setup password authetication, use as a decryption setup for a client - server communication, stored encrypted data over public devices, etc. This library can be also used to cross-verify and test other decrypter softwares for their correctness.

## Mission Statement
The objective of this library is to spread awareness for the people to know how easily the passwords can be cracked using reverse engineering approaches.

This library is solely published to serve educational purposes and understand the working of SHA1 and SHA256 with encorparting software engineering standards during the process of development. However, any usage beyond learning is not intended like executing hacking, or trying to crack unauthorized passwords.

## Installation
### Swift Package Manager
The [Swift Package Manager](https://www.swift.org/package-manager/) is "a tool for managing the distribution of Swift code. It's integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies." <p></p>
Once you have your Swift package set up, add Crackstation to the list of dependencies in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/katkhedp/CrackStation", .upToNextmajor(from: "2.1.4"))
]
```

## Usage

The cracstation implementation contanins two function init() and decrypt(). Their usage is as below:

1) `init()` -> This function is a constructor which loads the pre built dictionary in the program which conatains all the required key-pairs of encrypted passwords and their actual value.

2) `decrypt()` -> This function accepts a parameter which is a encrypted hash string and returns decrypted password



```swift

@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func test_example() throws {
        //input
        let inputHash = "d9f0509fb7e8bd7d4c4b627dfec70c0c0e01fb34"
        //callsite
        let decrypted = CrackStation().decrypt(shaHash: inputhash) ?? nil
        //test
        XCTAssertEqual(decrypted, "cba")
    }
}

```

### Example


# Stable release
- The latest stable release for the applciation is "2.1.4".

# Author
- The project is developed and uploaded by Pushpak Vijay Katkhede




