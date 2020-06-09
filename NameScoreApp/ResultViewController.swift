//
//  ResultViewController.swift
//  NameScoreApp
//
//  Created by xxxxxx on 2020/06/08.
//  Copyright © 2020 xxxxxx. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var myName: String = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        print(myName)
        
        self.nameLabel.text = "\(self.myName)'s score is ..."
        
        self.scoreLabel.text = String(arc4random_uniform(101))
        
        // Do any additional setup after loading the view.
    }
   
override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning();
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
