//
//  ViewController.swift
//  TestPrtclAndDelegt
//
//  Created by Wac on 01/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var platformLabel: UILabel!
    @IBOutlet weak var languageLable: UILabel!
    @IBAction func addValues(_ sender: UIButton) {
        guard let nextController = storyboard?.instantiateViewController(identifier: "NextViewController") as? NextViewController else {
            fatalError("View Controller not found")
        }
        nextController.delegate = self
        navigationController?.pushViewController(nextController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
extension ViewController: AddValuesDelegate{
    func platformText(_ text: String) {
        print(text)
        platformLabel.text = "Platform: \(text)"
    }
    func languageText(_ text: String) {
        print(text)
        languageLable.text = "Language: \(text)"
    }
}

