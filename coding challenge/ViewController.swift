//
//  ViewController.swift
//  coding challenge
//
//  Created by Kristen Kozmary on 7/24/15.
//  Copyright (c) 2015 koz. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

    var cellContent = ["one","two","three","four","five"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellContent.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell (style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "cellSegue" {
            
            var svc = segue.destinationViewController as! SecondViewController;
            
            var selectedIndexPath = self.tableView.indexPathForSelectedRow()
            
            var selectedRow = self.cellContent[selectedIndexPath!.row]
            
            svc.toPass = selectedRow
        }
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }}