//
//  CongratsViewController.swift
//  TTB
//
//  Created by Tracy Wei on 11/7/20.
//  Copyright © 2020 TracyWei. All rights reserved.
//

import UIKit

class CongratsViewController: UIViewController {
    
    var counter: Int?
    
    @IBOutlet weak var scoreLabel: UILabel!     // the label for the score
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(counter!) + "/4"   // change the /2 to a /4
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBackHome(_ sender: Any) {
        performSegue(withIdentifier: "backHome", sender: nil)   // the segue (present modally) created between the congrats screen and home
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backHome" {
            let controller = segue.destination as! ViewController
                controller.counter = counter!
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
}
