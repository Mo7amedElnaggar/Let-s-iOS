//
//  ViewController.swift
//  githubAPI
//
//  Created by Mohamed El-Naggar on 6/22/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data = [(String , String)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Remove top Margin from UITableView
        self.automaticallyAdjustsScrollViewInsets = false
        
        tableView.separatorInset = .zero
        tableView.tableFooterView = UIView()
        
        githubAPI.gitEmojj { (success, data) in
            if success {
                // DONE
                print("DONE")
                self.data = data!
                self.tableView.reloadData()
            } else {
                // ERROR
            }
        }
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showImage" {
            
            let destVC = segue.destination as! secondVC
            
            let indexPath = tableView.indexPath(for: (sender as! UITableViewCell))!
            

            
            githubAPI.downloadImage(urlString: data[indexPath.row].1, completion: { (success, image) in
                if success {
                    // DONE
                    
                    destVC.imageIsDownloadingLabel.removeFromSuperview()
                    
                    destVC.namedLabel?.text = self.data[indexPath.row].0
                    self.navigationController?.title = self.data[indexPath.row].0
                    
                    destVC.imageView?.image = image!
                    
                } else {
                    // ERROR
                }
            })
        }
    }
}



extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else {
            
            return UITableViewCell()
        }
        
        cell.textLabel?.text = data[indexPath.row].0
        
        cell.textLabel?.textColor = .white
        
        return cell
    }
}

