//
//  ViewController.swift
//  tableview1
//
//  Created by CodeWell on 11/5/18.
//  Copyright © 2018 Ivana Stamardjioska. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    let dailyTasks = ["Check all windows", "Check all doors"]
    let weeklyTasks = ["Check inside all cabins"]
    let mouthlyTasks = ["Test security alarm"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return mouthlyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
        case 1: cell.textLabel?.text = weeklyTasks[indexPath.row]
        case 2: cell.textLabel?.text = mouthlyTasks[indexPath.row]
            
            
            
        default: cell.textLabel?.text = "This shouldn't happen"
          
        }
  return cell
        
}
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0:
            return "DailyTasks"
        case 1:
            return "WeeklyTasks"
        case 2:
            return "MouthlyTasks"
        default:
            return nil
        }
    }
    }

