import Foundation
import CommonCrypto

func MD5(_ string: String) -> String {
    guard let messageData = string.data(using:.utf8) else {
        return ""
    }
    
    var digestData = Data(count: Int(CC_MD5_DIGEST_LENGTH))

    _ = digestData.withUnsafeMutableBytes {digestBytes in
        messageData.withUnsafeBytes {messageBytes in
            CC_MD5(messageBytes, CC_LONG(messageData.count), digestBytes)
        }
    }

    return digestData.map { String(format: "%02hhx", $0) }.joined()
}
