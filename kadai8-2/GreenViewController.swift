import UIKit

class GreenViewController: UIViewController {
   
    var brownText = ""
    
    // ラベルとスライダーのアウトレット
    @IBOutlet private weak var labelB: UILabel!
    @IBOutlet private weak var greenSlider: UISlider!
    
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // View Will Appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let delegate = UIApplication.shared.delegate as! AppDelegate
        self.labelB.text = delegate.value
        delegate.value = "\(self.greenSlider.value)"
    }
    // スライダーアクション
    @IBAction func changeSlider(_ sender: Any) {
      self.labelB.text = "\(self.greenSlider.value)"
    }
}
