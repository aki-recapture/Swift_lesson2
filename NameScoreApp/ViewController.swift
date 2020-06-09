//
//  ViewController.swift
//  NameScoreApp
//
//  Created by 近藤明広 on 2020/06/07.
//  Copyright © 2020 AkihiroKondo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameText.delegate = self
    }
    
    // delegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.sendButton.sendActions(for: .touchUpInside)
        return true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.nameText.text = ""
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showResult"{
            guard self.nameText.text != "" else {
//                print("no name!")
                let alertController = UIAlertController (title:
                    "Errer", message: "Please enter your name" , preferredStyle:
                    .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
                return false
            }
            return true
        }
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifire = segue.identifier else {
            return
        }
        if identifire == "showResult"{
            let resultVC = segue.destination as! ResultViewController
            resultVC.myName = self.nameText.text!
            self.nameText.resignFirstResponder()
        }
    }
}
