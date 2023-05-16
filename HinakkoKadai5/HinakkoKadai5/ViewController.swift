//
//  ViewController.swift
//  HinakkoKadai5
//
//  Created by Hina on 2023/05/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!


    @IBAction func calculateButton(_ sender: UIButton) {

        guard let leftValue = Float(textField1.text ?? "") else{
            presentAlert(message: "割られる数を入力して下さい")
            return
        }
        guard let rightValue = Float(textField2.text ?? "") else{
            presentAlert(message: "割る数を入力して下さい")
            return
        }
        guard rightValue != 0 else{
            presentAlert(message: "割る数には0を入力しないで下さい")
            return
        }
        let resultValue = Float(leftValue / rightValue)
        resultLabel.text = String("\(resultValue)")

        func presentAlert(message: String?){ //現在のインターフェイス コントローラー上にアラートまたはアクション シートを表示
            let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert) //title や message を指定して、UIAlertController を生成
            alert.addAction(UIAlertAction(title: "OK", style: .default))//UIAlertAction で OK ボタンを生成し、addAction() でアラートダイアログにその UIAlertAction を追加
            present(alert, animated: true ,completion: nil)//アラートダイアログを画面に表示
        }
    }
}
