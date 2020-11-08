//
//  ViewController.swift
//  TTB
//
//  Created by Tracy Wei on 11/6/20.
//  Copyright © 2020 TracyWei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    @IBOutlet weak var level2Button: UIButton!
    @IBOutlet weak var level1Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(counter == 2){       // change 2 to 4 for the number of questions
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
