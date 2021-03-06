//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Santhosh Kumar on 01/12/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var tipPercent: String?
    var noOfPeople: String?
    var totalBill: String?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = totalBill
        settingsLabel.text = "Split between \(noOfPeople!) , with \(tipPercent!) % tip"
        // Do any additional setup after loading the view.
    }

    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
