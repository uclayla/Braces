//
//  Meds.swift
//  Braces - Tabbed
//
//  Created by Ayla Walsh on 5/12/16.
//  Copyright © 2016 M-ITI. All rights reserved.
//

import UIKit

class Meds: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var medsTableView: UITableView!
   
    var medsDates = ["April 14", "April 15", "April 16", "April 17", "April 18"]
    var medsDosages = ["5/5", "4/5", "4/5", "3/5", "2/5", "5/5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Medication
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medsDates.count // Most of the time my data source is an array of something...  will replace with the actual name of the data source
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return medsCellAtIndexPath(indexPath)
    }
    func medsCellAtIndexPath(indexPath: NSIndexPath) -> medsCell {
        //let idx = indexPath
        let cell = medsTableView.dequeueReusableCellWithIdentifier("medsCell") as! medsCell
        cell.medsDate.text = medsDates[indexPath.row]
        cell.dosageMet.text = medsDosages[indexPath.row]
        return cell
    }
}
