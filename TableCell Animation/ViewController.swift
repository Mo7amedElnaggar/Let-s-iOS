//
//  ViewController.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/9/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//
import UIKit
//import AVFoundation
import Social

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        animateTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = "Cell Number \(indexPath.row)"
        
        return cell
    }
    
    private func animateTableView() {
        tableView.reloadData()
        
        let allCells = tableView.visibleCells
        
        let tableViewHeight = tableView.bounds.size.height
        
        for cell in allCells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
        }
        
        var delayCounter: Double = 0
        for cell in allCells {
            UIView.animate(withDuration: 1, delay: delayCounter * 0.4, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            
            delayCounter += 1
        }
        
    }

}

