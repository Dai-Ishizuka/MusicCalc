//
//  FirstViewController.swift
//  MusicCalc
//
//  Created by 石塚大 on 2019/03/24.
//  Copyright © 2019 石塚大. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var value1: UITextField!
    @IBOutlet weak var value2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    
    
    @IBOutlet weak var errorLabel1: UILabel!
    @IBOutlet weak var errorLabel2: UILabel!
    
    
    
    let dataList = ["+", "-", "×", "÷"]
    
    //計算ボタン
    @IBAction func Calculete(_ sender: Any) {
        
        if let a = value1.text, a.isEmpty , let b = value2.text, b.isEmpty{
            errorLabel1.isHidden = false
            errorLabel2.isHidden = false
        }else if let a = value1.text, a.isEmpty{
            errorLabel2.isHidden = true
            errorLabel1.isHidden = false
        }else if let b = value2.text, b.isEmpty{
            errorLabel1.isHidden = true
            errorLabel2.isHidden = false
        }else {
            errorLabel1.isHidden = true
            errorLabel2.isHidden = true
            
            let getValue1: Int = Int(value1.text!)!
            let getValue2: Int = Int(value2.text!)!
            
            
            switch picker.selectedRow(inComponent: 0) {
            case 0:
                resultLabel.text = String(getValue1 + getValue2)
            case 1:
                resultLabel.text = String(getValue1 - getValue2)
            case 2:
                resultLabel.text = String(getValue1 * getValue2)
            case 3:
                let FGetValue1: Double = Double(getValue1)
                let FGetValue2: Double = Double(getValue2)
                resultLabel.text = String(FGetValue1 / FGetValue2)
            default:
                break
            }
        }
    }
    
    //リセットボタン
    @IBAction func reset(_ sender: UIButton) {
        value1.text = ""
        value2.text = ""
        resultLabel.text = ""
    }
   
    
    
    
    
    //UIPickerViewの列に数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //UIPickerViewの行数、列の数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataList.count
    }
    
    //UIPickerViewに表示する配列
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        picker.setValue(UIColor.white, forKey: "textColor")
        return dataList[row]
        
    }
    
    //いらないかも
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        value1.becomeFirstResponder()
        
    
    }
    


}
