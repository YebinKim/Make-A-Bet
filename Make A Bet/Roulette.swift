//
//  Roulette.swift
//  Make A Bet
//
//  Created by 김예빈 on 2018. 4. 21..
//  Copyright © 2018년 김예빈. All rights reserved.
//

import UIKit

class Roulette: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet var RoulettePicker: UIPickerView!
    
    var rowCount: Int = 0
    var dataArray: Array<String?> = Array(repeating: "", count: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.navigationController?.navigationBar.topItem?.title = ""
        
        // 시작 지점을 피커의 가운데로 지정
        RoulettePicker.selectRow(pickerSize/2, inComponent: 0, animated: false)
    }
    
    let pickerSize = 3000
    
    // 각 행의 내용 설정
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var tempArray: Array<String?> = Array(repeating: "", count: 3000)
        var i: Int = 0
        
        // 10개 미만으로 입력했을 때 입력하지 않은 행이 비어있으면 안된다. 즉 입력한 개수 만큼만 행을 생성할 수 있도록 임시 배열이 필요
        while i <= row {
            for j in 0 ..< rowCount {
                tempArray[i] = dataArray[j]
                i += 1
            }
        }
        return tempArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // 선택된 행을 고르기 위해, 현재 지점을 피커의 가운데로 재설정
        let position = pickerSize/2 + row
        pickerView.selectRow(position, inComponent: 0, animated: false)
    }
    
    // 열 개수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // 행 개수(pickerSize)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerSize
    }
}
