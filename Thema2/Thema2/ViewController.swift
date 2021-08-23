//
//  ViewController.swift
//  Thema2
//
//  Created by 佐藤響 on 2021/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet private weak var calculationLabel: UILabel!
    
    
    @IBAction func didTapButton(_ sender: Any) {
        
        //textFieldの値を数値に変換
        let num1 = Float(textField1.text ?? "") ?? 0
        let num2 = Float(textField2.text ?? "") ?? 0
        
        //計算と表示
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            let sum = num1 + num2
            calculationLabel.text = "\(sum)"
        case 1:
            let sum = num1 - num2
            calculationLabel.text = "\(sum)"
        case 2:
            let sum = num1 * num2
            calculationLabel.text = "\(sum)"
        case 3:
            let sum = num1/num2
            calculationLabel.text = "\(sum)"
            if num2 == 0 {
                calculationLabel.text = "割る数には0以外を入力してください！"
            }
        default:
            break
        }
        
    }
    

}

