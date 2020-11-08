//
//  hisViewController.swift
//  LinkDemo-Swift
//
//  Created by Damilola Awofisayo on 11/8/20.
//  Copyright © 2020 Plaid Inc. All rights reserved.
//

import UIKit

class hisViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var table: UITableView!
let hiarray = [" +11: INCOME DIV DIVIDEND RECEIVED     Gained $8.27 ", " +25: SELL Matthews Pacific Tiger Fund Insti Class     Gained $1289.01", "+59: BUY DoubleLine Total Return Bond Fund   Invested $7.7" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return hiarray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hicell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        hicell.textLabel!.text = hiarray[indexPath.row]
        return hicell
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
