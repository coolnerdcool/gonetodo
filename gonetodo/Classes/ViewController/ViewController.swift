//
//  ViewController.swift
//  gonetodo
//
//  Created by Michel Ortega on 10/29/18.
//  Copyright © 2018 Michel Ortega. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

  //MARK: Properties
  @IBOutlet var taskNameLabel: UILabel!
  @IBOutlet var taskTextField: UITextField!
  
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    view.backgroundColor = UIColor.blue
    
    //  Handle the text field input provided by the user
    taskTextField.delegate  = self
  
  }
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(true)
    
  }
  
  //MARK: UITextFieldDelegate
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
    //  Hide the keyboard
    textField.resignFirstResponder()
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    taskNameLabel.text = taskTextField.text
    
  }
  
  //MARK: Actions
  @IBAction func setTaskAction(_ sender: UIButton) {
    taskNameLabel.text  = "Default"
  }
  
}

