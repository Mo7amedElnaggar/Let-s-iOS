//
//  ViewController.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/9/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var fromText: UITextField!
    @IBOutlet weak var toText: UITextField!
    @IBOutlet weak var GuessNum: UILabel!
    
    
    enum ErrorType: Error {
        case invalidateInput
    }
    
    var displayNumber: Int {
        get { return Int(GuessNum.text!)! }
        set { GuessNum.text = "\(newValue)" }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func generateNumber(_ sender: UIButton) {
        do {
            
            displayNumber = try tryGuessing()

        } catch ErrorType.invalidateInput {
            alertME("Error", "Invalidate Input")
        }catch {
            alertME("Error", "Invalidate Input")
        }
    }
    
    
    private func tryGuessing() throws -> Int {
        var start = 1 , end = 0
        if let first = Int(fromText.text!) { start = first }
        if let second = Int(toText.text!) { end = second }
        
        if (start > end) { throw ErrorType.invalidateInput }
        
        return Int(arc4random_uniform(UInt32(end - start + 1))) + start
    }
    
    private func alertME(_ title: String , _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
