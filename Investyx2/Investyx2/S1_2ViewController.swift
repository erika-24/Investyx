//
//  S1_2ViewController.swift
//  Investyx2
//
//  Created by Erika Ramirez on 11/7/20.
//

import UIKit

class S1_2ViewController: UIViewController {

    @IBOutlet weak var diversity: UIImageView!
    
    var counter2: Int?
    
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diversity.loadGif(name: "Diversity")
       // print(counter2!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func yesButton(_ sender: Any) {
        counter2! += 1
        yesButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    
    @IBAction func noButton(_ sender: Any) {
        noButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    
    @IBAction func nextScreen(_ sender: Any) {
        performSegue(withIdentifier: "movetoScene3", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movetoScene3" {
            let controller = segue.destination as! S1_3ViewController
            controller.counter3 = self.counter2!
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
