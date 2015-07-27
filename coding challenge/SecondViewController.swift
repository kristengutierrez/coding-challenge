//
//  SecondViewController.swift
//  coding challenge
//
//  Created by Kristen Kozmary on 7/24/15.
//  Copyright (c) 2015 koz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var toPass: String!

    @IBOutlet weak var rowNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rowNameLabel.text = toPass
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
