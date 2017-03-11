//
//  ViewController.swift
//  Let’s Try
//
//  Created by Mohamed El-Naggar on 3/3/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit
import CoreFoundation // to use NSUserDefaults Class

class ViewController: UIViewController {
    @IBOutlet weak var numOne: UITextField!
    @IBOutlet weak var numTwo: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    var messageDivideCount: Int = 0
    var messageEmptyCount: Int = 0 ;
    
    let messageDivide: [String] = [
        "ياصاحبى مفيش قسمه على الزيرو" ,
        "يسطا وربنا مافيه قسمه على الزيرو" ,
        "يابنى وربنا ماخترعوا ف الرياضه قسمه على زيرو" ,
        "انتا كده مقتنع يعنى انى هطلعلك الناتج ؟؟" ,
        "مش هطلعلك ناتج برودو  😂😂😂",

    "لا"
    ]
    
    let messageEmpty: [String] = [
        "متسبش خانه فاضيه!!!" ,
        "وربنا فيه مكان فاضى" ,
        "ياعم انا كمبيوتر هفهم ازاى ياعنى ؟" ,
        "ياأعمى فيه خانه فاضيه لسه محطتش فيها رقم" ,
        "يامثبت العقل والدين يارب شيلوه من عليا ياجدعان 😂😂😂😂😂" ,
    "لا" ,
    ]
    
    enum ErrorHandling: Error {
        case divideByZero
        case emptyField
    }

    override func viewDidLoad() {
        super.viewDidLoad()
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func divideTwoNumbers(_ n1: Double , _ n2: Double) throws -> Double {
        if(n2 == 0){
            throw ErrorHandling.divideByZero
        }
        return n1 / n2
    }
    
    func emptyTextField() throws {
        if(numOne.text?.isEmpty == true || numTwo.text?.isEmpty == true){
            throw ErrorHandling.emptyField
        }
    }
    
    @IBAction func showMeResult(_ sender: Any) {
        do {
            let firstNum = numOne.text
            let secondNum = numTwo.text
            try emptyTextField()
            let result = try divideTwoNumbers(Double(firstNum!)! , Double(secondNum!)!)
            answerLabel.text = "\(result)"
        } catch ErrorHandling.divideByZero {
            if(messageDivideCount < 6){
                messageDivideCount += 1
                alertError("خطأ" , messageDivide[messageDivideCount])
            }
        } catch ErrorHandling.emptyField {
            if(messageEmptyCount < 6){
                alertError("خطأ" , messageEmpty[messageEmptyCount])
                messageEmptyCount += 1
            }
        } catch {
            alertError("Error", "There is Some thing let to Error , Contact the Owner")
        }
        if(messageDivideCount == 5 && messageEmptyCount == 5){
            UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
        }
    }
    
    func alertError(_ title: String , _ message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}

