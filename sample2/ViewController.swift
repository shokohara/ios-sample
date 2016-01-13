import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: "touchUpInside", forControlEvents: .TouchUpInside)
        sample()
    }
    
    func touchUpInside() {
        let alertController = UIAlertController(title: nil, message: "\(textField.text!)abc", preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: {print($0)}))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    func sample(){
        let a = "abc"
        print("xyz\(a)")
    }
}
