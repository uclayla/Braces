//
//  FirstViewController.swift
//  Braces - Tabbed
//
//  Created by Ayla Walsh on 5/10/16.
//  Copyright © 2016 M-ITI. All rights reserved.
//
import UIKit

class Goals: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!


    
    var sleepDates = ["April 14", "April 15", "April 16", "April 17", "April 18"]
    var sleepHours = ["7", "6", "8","9", "8"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    //Sleep
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sleepDates.count // Most of the time my data source is an array of something...  will replace with the actual name of the data source
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return sleepCellAtIndexPath(indexPath)
    }
    func sleepCellAtIndexPath(indexPath: NSIndexPath) -> sleepCell {
        //let idx = indexPath
        let cell = tableView.dequeueReusableCellWithIdentifier("sleepCell") as! sleepCell
        cell.sleepDates.text = sleepDates[indexPath.row]
        cell.sleepHours.text = sleepHours[indexPath.row]
        return cell
    }
    
 
}

