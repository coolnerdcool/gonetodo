//
//  TaskClass.swift
//  gonetodo
//
//  Created by Michel Ortega on 11/22/18.
//  Copyright © 2018 Michel Ortega. All rights reserved.
//

import CoreData
import Foundation
import os.log

class Task {
  
  var task: String
  var time: Float
  
  
  init(task: String, time: Float) {
    self.task = task
    self.time = time
    
  }
    
}

/*  The class that checks each task 24 lifetime.  */
class Time: TaskTime {
  
  var day: Double = 0
  
  init(day: Double) {
    
    self.day = day
  }
  
  func getTime() {
  
  }
  
}
