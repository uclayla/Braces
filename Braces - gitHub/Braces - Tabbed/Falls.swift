//
//  Falls.swift
//  Braces - Tabbed
//
//  Created by Ayla Walsh on 5/12/16.
//  Copyright © 2016 M-ITI. All rights reserved.
//

import UIKit

class Falls: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // @IBOutlet var tableView: UITableView!
    
    @IBOutlet var fallsTableView: UITableView!
    
    
    var fallDates = ["April 14", "April 15", "April 16", "April 17", "April 18"]
    var numTimesFallen = ["3", "2", "1", "1", "5" ]
    
    
    
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
        return fallDates.count // Most of the time my data source is an array of something...  will replace with the actual name of the data source
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return fallCellAtIndexPath(indexPath)
    }
    func fallCellAtIndexPath(indexPath: NSIndexPath) -> fallCell {
        //let idx = indexPath
        let cell = fallsTableView.dequeueReusableCellWithIdentifier("fallCell") as! fallCell
        cell.fallDate.text = fallDates[indexPath.row]
        cell.numFalls.text = numTimesFallen[indexPath.row]
        return cell
    }
    


}
