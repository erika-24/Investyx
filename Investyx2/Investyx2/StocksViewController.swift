//
//  StocksViewController.swift
//  Investyx2
//
//  Created by Erika Ramirez on 11/7/20.
//

import UIKit

class StocksViewController: UIViewController {

    var counter = 0
    @IBOutlet weak var level2Button: UIButton!
    @IBOutlet weak var level1Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(counter == 4){       // change 2 to 4 for the number of questions
            level2Button.setTitleColor(UIColor.black, for: .normal)
            level1Button.isHidden = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "leveloneStart" {    // leveloneStart is the name of the segue that connects this view controller to question 1
            let controller = segue.destination as! S1_1ViewController     // rename Scene1ViewController to the name of your current view controller
            controller.counter1 = self.counter
    }
    }
}
