//
//  NextViewController.swift
//  TestPrtclAndDelegt
//
//  Created by Wac on 01/03/22.
//

import UIKit
protocol AddValuesDelegate {
    func platformText(_ text: String)
    func languageText(_ text: String)
}

class NextViewController: UIViewController {
    var delegate: AddValuesDelegate?
    
    @IBOutlet weak var platformTextfield: UITextField!
    @IBOutlet weak var languageTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func doneButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        self.delegate?.platformText(platformTextfield.text ?? "")
        self.delegate?.languageText(languageTextfield.text ?? "")
    }
}
