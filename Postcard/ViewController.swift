//
//  ViewController.swift
//  Postcard
//
//  Created by Ian Irvine on 10/12/2014.
//  Copyright (c) 2014 Ian Irvine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: AnyObject)
    {
        messageLabel.hidden = false
        nameLabel.hidden = false
        
        messageLabel.text = messageTextField.text
        messageLabel.textColor = UIColor.redColor()
        messageTextField.text = ""
        
        nameLabel.text = nameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        nameTextField.text = ""
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

