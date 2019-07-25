//
//  ViewController.swift
//  data persistence
//
//  Created by IMCS2 on 7/24/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var newName:String = " "
    var newPhone:String = " "
    @IBOutlet weak var myTextField1: UITextField!
    @IBOutlet weak var myTextField2: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    
    @IBAction func saveButton(_ sender: Any) {
        let personName = myTextField1.text
        let personPhone = myTextField2.text
        
        UserDefaults.standard.set(myTextField1.text, forKey: "name")  //storing values for name
        UserDefaults.standard.set(myTextField2.text, forKey: "phone") //storing values for phone number
        print (personName!)
        print (personPhone!)
        
        if ((newName == personName) && (newPhone == personPhone))
        {
            myLabel.text = ("Info already exists")
        }
        else if ((newName == personName!) && (newPhone != personPhone!))
        {
            myLabel.text = ("info updated")
            saveButton.setTitle("update", for: .normal)
        }
        else{
            myLabel.text = ("Info Saved")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newName = UserDefaults.standard.value(forKey: "name") as! String //retrieving name
        print(newName)
        newPhone = UserDefaults.standard.value(forKey: "phone") as! String //retrieving phone number
        print(newPhone)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    
    @IBAction func exit(_ sender: Any)
    {
        self.view.endEditing(true)
    }
    }




