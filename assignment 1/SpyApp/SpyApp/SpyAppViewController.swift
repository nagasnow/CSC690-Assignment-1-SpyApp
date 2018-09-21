import UIKit

class SpyAppViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var secret: UITextField!
    @IBOutlet weak var output: UILabel!

    let factory = CipherFactory()
    var cipher: Cipher!

    @IBAction func encodeButtonPressed(_ sender: UIButton)
    {
        let plaintext = input.text!
        let secret = self.secret.text!
        guard let cipher = self.cipher else {
            output.text = "Cipher was not selected"
            return 
        }
        
        if let encoded = cipher.encode(plaintext, secret: secret) {
            output.text = encoded
        } else {
            output.text = "Encoding Error!"
        }
        
    }

    @IBAction func decodeButtonPressed(_ sender: UIButton) {
        let plaintext = input.text!
        let secret = self.secret.text!
        
        if let cipher = self.cipher {
            output.text = cipher.decode(plaintext,secret:secret)
        } else {
            output.text = "No cipher chosen"
        }
    }
    // We will talk about this method during lecture
    @IBAction func cipherButtonPressed(_ sender: UIButton) {
        let key = sender.titleLabel!.text!
        cipher = factory.cipher(for: key)
    }
    @IBAction func alphaNumericButtonPressed(_ sender: UIButton) {
        let key = sender.titleLabel!.text!
        cipher = factory.cipher(for: key)
    }
    @IBAction func substitutionButtonPressed(_ sender: UIButton) {
        let key = sender.titleLabel!.text!
        cipher = factory.cipher(for: key)
    }
    @IBAction func backwardButtonPressed(_ sender: UIButton) {
        let key = sender.titleLabel!.text!
        cipher = factory.cipher(for: key)
    }
}

