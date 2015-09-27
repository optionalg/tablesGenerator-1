//
//  TableViewController.swift
//  Tables
//
//  Created by Chandresh on 27/09/15.
//  Copyright (c) 2015 techtimes. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    var number = 0
    var range = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return range
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        var m = number * (indexPath.row + 1)
        
        cell.textLabel?.text = "\(number) X \(indexPath.row + 1) = \(m)"
        
        return cell
    }

}
