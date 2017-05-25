//
//  secondVC.swift
//
//  Created by Mohamed El Naggar on 5/25/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//

import UIKit

class secondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func moveToFirst(_ sender: UIBarButtonItem) {
        
        guard let window = UIApplication.shared.keyWindow else { return }
        
        window.rootViewController = storyboard?.instantiateViewController(withIdentifier: "firstVC")
        
        UIView.transition(with: window, duration: 0.5, options: .transitionCurlUp, animations: nil, completion: nil)
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
