//
//  ViewController.swift
//  CalculatorEX
//
//  Created by 박규빈 on 2023/02/16.
//

import UIKit

//정수연산만 가능한 계산기
class ViewController: UIViewController {
    //MARK: - UI
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plusButtonClicked(_ sender: Any) {
        print(#function)
        if let firstNumber = Int(firstTextField.text!), let secondNumber = Int(secondTextField.text!) {
            let result = firstNumber + secondNumber
            resultLabel.text = "= \(result)"
        } else {
            resultLabel.text = "입력값이 잘못되었습니다."
        }
        
    }
    
    @IBAction func minusButtonClicked(_ sender: Any) {
        print(#function)
        if let firstNumber = Int(firstTextField.text!), let secondNumber = Int(secondTextField.text!) {
            let result = firstNumber - secondNumber
            resultLabel.text = "= \(result)"
        } else {
            resultLabel.text = "입력값이 잘못되었습니다."
        }
    }
    
    @IBAction func divideButtonClicked(_ sender: Any) {
        print(#function)
        if let firstNumber = Int(firstTextField.text!), let secondNumber = Int(secondTextField.text!) {
            if secondNumber != 0 {
                let result = firstNumber / secondNumber
                resultLabel.text = "= \(result)"
            } else {
                resultLabel.text = "0은 안됩니다"
            }
        } else {
            resultLabel.text = "입력값이 잘못되었습니다."
        }
    }
    
    @IBAction func multiplyButtonClicked(_ sender: Any) {
        print(#function)
        if let firstNumber = Int(firstTextField.text!), let secondNumber = Int(secondTextField.text!) {
            let result = firstNumber * secondNumber
            resultLabel.text = "= \(result)"
        } else {
            resultLabel.text = "입력값이 잘못되었습니다."
        }
    }
    
    
    
    
    
    
}

