//
//  ViewController2.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/23/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//

import UIKit
import CoreData

class ViewController2: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var friendsList = [(String , Bool)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
        loadFromCoreData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! newCell
        
        cell.setCell(name: friendsList[indexPath.row].0, love: friendsList[indexPath.row].1)
        
        return cell
    }
    /*
     // TODO: here i will add delete editStyle
     ..
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
        }
    }
    */
    
    private func loadFromCoreData() {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let context = appDelegate?.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Favorite")
        
        do {
            let result = try context?.fetch(fetchRequest)
            
            for i in result as! [NSManagedObject] {

                if let name = i.value(forKey: "name") as? String {
                    if let love = i.value(forKey: "loveIt") as? Bool {
                        friendsList.append((name , love))
                    }
                }
            }
            
        } catch {
            print("Error")
        }
        
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
