//
//  AddEntryViewController.swift
//  PlacesApp
//
//  Created by Colben Matthew Kharrl on 2/22/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import UIKit

class AddEntryViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    
    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var descriptionText: UITextView!
    
    var name: String = ""
    var desc: String = ""

    @IBAction func save(_ sender: UIButton) {
        name = nameField.text!
        if name == "" {
            promptLabel.text = "Name needed."
            promptLabel.textColor = UIColor.red
        } else {
            desc = descriptionText.text
            promptLabel.text = "Saved."
            promptLabel.textColor = UIColor.green
        }
    }
    @IBAction func clear(_ sender: UIButton) {
        nameField.text = ""
        descriptionText.text = ""
        promptLabel.text = "Cleared."
        promptLabel.textColor = UIColor.darkGray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //  populate data object
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AddEntryViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

        nameField.delegate = self
        descriptionText.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //  textfield delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //  end editing
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
