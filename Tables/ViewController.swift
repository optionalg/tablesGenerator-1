//
//  ViewController.swift
//  Tables
//
//  Created by Chandresh on 27/09/15.
//  Copyright (c) 2015 techtimes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableNumber: UITextField!
    
    @IBOutlet var TableRange: UITextField!
    
    @IBOutlet var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
                
        let tableView = segue.destinationViewController as? TableViewController
        
        if tableNumber.text != "" && TableRange.text != ""
        {
            tableView?.number = Int(NSNumberFormatter().numberFromString(tableNumber.text!)!.intValue)
            
            tableView?.range = Int(NSNumberFormatter().numberFromString(TableRange.text!)!.intValue)
        }
        else
        {
            messageLabel.text = "Enter number in both the fields"
        }
        
        
        
    }

}

