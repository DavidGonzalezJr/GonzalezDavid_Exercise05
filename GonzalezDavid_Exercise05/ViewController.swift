//
//  ViewController.swift
//  GonzalezDavid_Exercise05
//
//  Created by David Gonzalez Jr on 12/1/17.
//  Copyright © 2017 David Gonzalez Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var textFieldTwo: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //This func is the touchesBegan it will call in the self variable with the view and end the editing to get ride of the keyboard when you touch outside of the textFields and anywhere on the screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        //or textFieldOne.resignFirstResponder()
        //textFieldTwo.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    @IBAction func clear(_ sender: UIButton, forEvent event: UIEvent) {
//        textFieldOne.text = ""
//        textFieldTwo.text = ""
//        textLabel.text = ""
//    }
//
    
    @IBAction func mathOperation(sender: UIButton){
        let tag = sender.tag
        var firstNumber = Int(textFieldOne.text!) ?? 0
        var secondNumber = Int(textFieldTwo.text!) ?? 0
        switch tag {
        case 0:
            textLabel.text = "\(firstNumber + secondNumber)"
        case 1:
            textLabel.text = "\(firstNumber - secondNumber)"
        case 2:
            firstNumber = Int(textFieldOne.text!) ?? 1
            secondNumber = Int(textFieldTwo.text!) ?? 1
            textLabel.text = "\(firstNumber * secondNumber)"
        case 3:
            firstNumber = Int(textFieldOne.text!) ?? 1
            secondNumber = Int(textFieldTwo.text!) ?? 1
            if secondNumber == 0 {
                textLabel.text = "Cannot divide by zero!!"
            } else {
                let resultIfDouble: Double = Double(firstNumber) / Double(secondNumber)
                let resultIfInt = Int(resultIfDouble)
                let remainderDouble = resultIfDouble - Double(resultIfInt)
                if remainderDouble == 0 {
                    textLabel.text = "\(resultIfInt)"
                } else {
                    textLabel.text = "\(resultIfDouble)"
                }
            }
        case 4:
            textFieldOne.text = ""
            textFieldTwo.text = ""
            textLabel.text = "0"
        default:
            print("Something invalid happened!!")
        }
    }

}

