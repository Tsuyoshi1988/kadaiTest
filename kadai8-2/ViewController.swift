//
//  ViewController.swift
//  kadai8-2
//
//  Created by 鎌田剛史 on R 5/08/19.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet private weak var brownSlider: UISlider!
    @IBOutlet private weak var labelA: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let delegate = UIApplication.shared.delegate as! AppDelegate
        self.labelA.text = delegate.value
        delegate.value = "\(self.brownSlider.value)"
    }
    
    @IBAction func changeSlider(_ sender: Any) {
        self.labelA.text = "\(self.brownSlider.value)"
    }
}
