//
//  TaskViewController.swift
//  gonetodo
//
//  Created by Michel Ortega on 10/29/18.
//  Copyright © 2018 Michel Ortega. All rights reserved.
//

import CoreData
import UIKit

class TaskViewController: UIViewController,UITableViewDelegate,UITextFieldDelegate {

  //MARK: Properties
  @IBOutlet var taskNameLabel: UILabel!
  @IBOutlet var taskTextField: UITextField!
  
  
  override func viewWillAppear(_ animated: Bool) {
    print("Working")
    super.viewWillAppear(true)
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewDidLoad is Working")
    view.backgroundColor = UIColor.blue
    
    //  Handle the text field input provided by the user
    taskTextField.delegate  = self
  
  }
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(true)
    
  }
  
  //MARK: TableView
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
//  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//  }
  
  
  
  
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
    //  save task in CoreData
    taskNameLabel.text  = "Default"
  }
  
}

