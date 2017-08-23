//
//  ViewController.swift
//  ExpandableUITableViewCell
//
//  Created by Mohamed El-Naggar on 8/23/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBOutlet var tableView: UITableView!
    var arrData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrData.append("Task 1")
        arrData.append("Task 2")
        arrData.append("Task 3")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Register NIB File for Cells
        
        tableView.register(UINib(nibName: "headerCell", bundle: nil), forCellReuseIdentifier: "headerCell")
        tableView.register(UINib(nibName: "customCell", bundle: nil), forCellReuseIdentifier: "customCell")
        
        print("Done Register Cells")
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if arrData[indexPath.row].contains("Task") {
            
            if let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as? headerCell {
                
                cell.labelName.text = "Task \(indexPath.row + 1)"
                
                return cell
            }
            
            
        } else {
            
            if let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as? customCell {
                
                cell.labelName.text = "Custom \(indexPath.row + 1)"
                
                return cell
            }
            
        }
        
        return UITableViewCell()
    }
    
}


extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if arrData[indexPath.row].contains("Task") {
            if let cell = tableView.visibleCells[indexPath.row] as? headerCell {
                if cell.isExpandalbe == false {
                    
                    arrData.insert("Custom \(indexPath.row)", at: indexPath.row + 1)
                    
                    
                    tableView.reloadData()
                    
                    cell.btnExpandable.setTitle("▶︎", for: .normal)
                    
                    cell.isExpandalbe = true
                    
                } else {
                    
                    cell.isExpandalbe = false
                    cell.btnExpandable.setTitle("▼", for: .normal)
                    
                    arrData.remove(at: indexPath.row + 1)
                    
                    tableView.reloadData()
                    
                }
            }
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return arrData[indexPath.row].contains("Task") ? 60 : 50
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return arrData[indexPath.row].contains("Task") ? 60 : 50
    }
    
}





