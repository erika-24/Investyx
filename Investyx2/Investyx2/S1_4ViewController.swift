//
//  S1_4ViewController.swift
//  Investyx2
//
//  Created by Erika Ramirez on 11/7/20.
//

import UIKit

class S1_4ViewController: UIViewController {

    @IBOutlet weak var investment_turnover: UIImageView!
    
    var counter4: Int?
    
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        investment_turnover.loadGif(name: "investmentTurnonver")
        // Do any additional setup after loading the view.
    }
    
            
    @IBAction func yesButton(_ sender: Any) {
        counter4! += 1
        yesButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    
    @IBAction func noButton(_ sender: Any) {
        noButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    
    @IBAction func nextScreen(_ sender: Any) {
        performSegue(withIdentifier: "movetoCongrats", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movetoCongrats" {
            let controller = segue.destination as! CongratsViewController
            controller.counter = self.counter4!
    }
            

    
    }
    }
