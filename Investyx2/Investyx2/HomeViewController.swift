//
//  HomeViewController.swift
//  Investyx2
//
//  Created by Erika Ramirez on 11/7/20.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeScreen: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeScreen.loadGif(name: "homeScreen")

        // Do any additional setup after loading the view.
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
