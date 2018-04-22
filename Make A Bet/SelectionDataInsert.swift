//
//  SelectionDataInsert.swift
//  Make A Bet
//
//  Created by 김예빈 on 2018. 4. 21..
//  Copyright © 2018년 김예빈. All rights reserved.
//

import UIKit

class SelectionDataInsert: UIViewController {

    @IBOutlet var displayNum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.topItem?.title = ""
    }

    // 1~25까지의 수를 입력할 수 있는 슬라이더
    @IBAction func numSlider(_ sender: UISlider) {
        displayNum.text = String(Int(sender.value))
    }
    
    // 슬라이더의 값을 다음 뷰로 전달
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! Selection
        
        destVC.selectCount = Int(displayNum.text!)!
    }
}
