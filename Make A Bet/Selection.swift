//
//  Selection.swift
//  Make A Bet
//
//  Created by 김예빈 on 2018. 4. 21..
//  Copyright © 2018년 김예빈. All rights reserved.
//

import UIKit

class Selection: UIViewController {
    
    // 이전 뷰에서 전달받은 num의 개수를 저장할 변수
    var selectCount: Int = 0
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.topItem?.title = ""
        
        displaySelection()
    }
    
    func displaySelection() {
        var randNumArray: Array<Int> = Array(repeating: 0, count: selectCount)
        var tempNum: Int = 0
        var tempLabel: String = ""
        
        // 배열을 오름차순으로 초기화
        for i in 0 ..< selectCount {
            randNumArray[i] = (i + 1)
        }
        
        // 저장된 배열의 값들을 swap하기
        for _ in 0 ..< selectCount {
            let randNum: UInt32 = arc4random_uniform(UInt32(selectCount))
            
            tempNum = randNumArray[Int(randNum)]
            randNumArray[Int(randNum)] = randNumArray[selectCount - 1]
            randNumArray[selectCount - 1] = tempNum
        }
        
        // 출력해야할 메세지를 한 줄씩 입력
        for i in 0 ..< selectCount {
            tempLabel += "number " + String(i+1) + ": " + String(randNumArray[i]) + "\n"
        }
        
        resultLabel.text = tempLabel
    }
}
