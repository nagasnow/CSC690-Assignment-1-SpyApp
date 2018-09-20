import Foundation

struct CipherFactory {

    private var ciphers: [String: Cipher] = [
        "cesar": CeaserCipher(),
        "alphaNumeric": AlphanumericCesarCipher(),
        "substitution": SubstitutionCipher(),
        "backward": BackwardCipher()
    ]

    func cipher(for key: String) -> Cipher {
        return ciphers[key]!
    }
}	

