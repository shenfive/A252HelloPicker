//
//  ViewController.swift
//  A252HelloPicker
//
//  Created by DannyShen on 2025/3/2.
//


import UIKit

class ViewController: UIViewController {
    
    var astrological = ["請選擇你的星座","白羊宮","金牛宮","雙子宮","巨蟹宮","獅子宮","處女宮","天秤宮","天蠍宮","射手宮","摩羯宮","水瓶宮","雙魚宮"]
    var bloudType = ["請選擇你的血型","A","B","O","AB"]

    @IBOutlet weak var thePickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thePickerView.dataSource = self
        thePickerView.delegate = self
    }
}

extension ViewController:UIPickerViewDataSource,UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component{
        case 0: return bloudType.count
        case 1: return astrological.count
        default: return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "test:\(component):\(row)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("選擇了：\(component)：\(row)") // 處理選擇事件
    }
    
}
