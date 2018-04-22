//
//  RouletteDataInsert.swift
//  Make A Bet
//
//  Created by 김예빈 on 2018. 4. 21..
//  Copyright © 2018년 김예빈. All rights reserved.
//

import UIKit

class RouletteDataInsert: UIViewController, UITextFieldDelegate {

    @IBOutlet var rouletteTextField: UITextField!
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    @IBOutlet var label8: UILabel!
    @IBOutlet var label9: UILabel!
    @IBOutlet var label10: UILabel!

    // 라벨이 존재하지 않는다면 값을, 존재한다면 nil을 반환하기 위한 배열
    var labelNonExist: Array<String?> = ["", "", "", "", "",
                                     "", "", "", "", ""]
    // 라벨의 텍스트 값을 저장할 배열
    var labelData: Array<String?> = ["", "", "", "", "",
                                     "", "", "", "", ""]
    // 입력된 라벨의 개수를 세기 위한 배열 -> 피커에서 몇개의 행을 만들지 계산
    var dataCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.topItem?.title = ""
        
        // 뷰를 불러옴과 동시에 labelData를 초기화하고, 라벨이 존재하고 있지 않음을 알리기 위해 labelNonExist에 값을 넣는다
        for i in 0 ..< 10 {
            labelData[i] = ""
            labelNonExist[i] = ""
        }
        dataCount = 0
        labelDataSet()
    }
    
    func labelDataSet() {
        label1.text = labelData[0]
        label2.text = labelData[1]
        label3.text = labelData[2]
        label4.text = labelData[3]
        label5.text = labelData[4]
        label6.text = labelData[5]
        label7.text = labelData[6]
        label8.text = labelData[7]
        label9.text = labelData[8]
        label10.text = labelData[9]
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
        if let _:String = labelNonExist[0] {
            label1.text = textField.text
            labelData[0] = textField.text
            dataCount += 1
            labelNonExist[0] = nil
        } else if let _:String = labelNonExist[1] {
            label2.text = textField.text
            labelData[1] = textField.text
            dataCount += 1
            labelNonExist[1] = nil
        } else if let _ = labelNonExist[2] {
            label3.text = textField.text
            labelData[2] = textField.text
            dataCount += 1
            labelNonExist[2] = nil
        } else if let _ = labelNonExist[3] {
            label4.text = textField.text
            labelData[3] = textField.text
            dataCount += 1
            labelNonExist[3] = nil
        } else if let _ = labelNonExist[4] {
            label5.text = textField.text
            labelData[4] = textField.text
            dataCount += 1
            labelNonExist[4] = nil
        } else if let _ = labelNonExist[5] {
            label6.text = textField.text
            labelData[5] = textField.text
            dataCount += 1
            labelNonExist[5] = nil
        } else if let _ = labelNonExist[6] {
            label7.text = textField.text
            labelData[6] = textField.text
            dataCount += 1
            labelNonExist[6] = nil
        } else if let _ = labelNonExist[7] {
            label8.text = textField.text
            labelData[7] = textField.text
            dataCount += 1
            labelNonExist[7] = nil
        } else if let _ = labelNonExist[8] {
            label9.text = textField.text
            labelData[8] = textField.text
            dataCount += 1
            labelNonExist[8] = nil
        } else if let _ = labelNonExist[9] {
            label10.text = textField.text
            labelData[9] = textField.text
            dataCount += 1
            labelNonExist[9] = nil
        }
        return true
    }
    
    // Clear 버튼
    @IBAction func numClearButton(_ sender: UIButton) {
        for i in 0 ..< 10 {
            labelData[i] = ""
            labelNonExist[i] = ""
        }
        dataCount = 0
        labelDataSet()
    }
    
    // 1부터 10까지의 숫자를 자동으로 세팅하는 버튼
    @IBAction func numSetButton(_ sender: UIButton) {
        for i in 0 ..< 10 {
            labelData[i] = (String)(i + 1)
            dataCount += 1
            labelNonExist[i] = nil
        }
        labelDataSet()
    }
    
    // labelData 배열(입력한 텍스트 값)과 rowCount(입력된 데이터의 개수)를 각각 피커에서 행의 내용, 행의 개수로 표현할 수 있게 다음 뷰로 전달
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! Roulette
        
        for i in 0 ..< 10 {
            destVC.dataArray[i] = labelData[i]
        }
        destVC.rowCount = dataCount
    }
}
