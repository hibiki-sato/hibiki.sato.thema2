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

        // textFieldの値を数値に変換
        let num1 = Float(textField1.text ?? "") ?? 0
        let num2 = Float(textField2.text ?? "") ?? 0

        // 計算と表示

        let resultText: String

        switch segmentedControl.selectedSegmentIndex {
        case 0:
            resultText = String(num1 + num2)
        case 1:
            resultText = String(num1 - num2)
        case 2:
            resultText = String(num1 * num2)
        case 3:
            if num2 == 0 {
                resultText = "割る数には0以外を入力してください！"
            } else {
                resultText = String(num1 / num2)
            }
        default:
            return
        }

        calculationLabel.text = resultText
    }

}
