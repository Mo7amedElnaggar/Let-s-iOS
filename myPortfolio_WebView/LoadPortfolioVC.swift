//
//  LoadPortfolioVC.swift
//  myPortfolio
//
//  Created by Mohamed El Naggar on 4/16/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//

import UIKit

class LoadPortfolioVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    let website: URL = URL(string: "http://Naggar.me")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadMyPortfolio(url: website)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func loadMyPortfolio(url: URL) {
        webView.loadRequest(URLRequest(url: url))
    }
    @IBAction func returnMeBack(_ sender: UIBarButtonItem) {
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
