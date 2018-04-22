//
//  Bomb.swift
//  Make A Bet
//
//  Created by 김예빈 on 2018. 4. 21..
//  Copyright © 2018년 김예빈. All rights reserved.
//

import UIKit

class Bomb: UIViewController {
    
    let iconBomb = UIImage(named: "Bomb Icon.png")
    let effectBang = UIImage(named: "Bang Image.png")
    
    // 폭탄의 개수를 관리할 변수
    var bombNum: Int = 0

    // 게임이 진행중인지 확인하기 위한 변수
    var gameStart: Bool = true
    
    // 랜덤으로 폭탄의 자리를 지정하기 위해 35개의 배열 선언
    var bombArray: Array<String?> = Array(repeating: nil, count: 35)

    @IBOutlet var ongoingActivity: UIActivityIndicatorView!
    @IBOutlet var endGameView: UIView!
    @IBOutlet var stateLabel: UILabel!
    
    // 이미지뷰 선언
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var image3: UIImageView!
    @IBOutlet var image4: UIImageView!
    @IBOutlet var image5: UIImageView!
    @IBOutlet var image6: UIImageView!
    @IBOutlet var image7: UIImageView!
    @IBOutlet var image8: UIImageView!
    @IBOutlet var image9: UIImageView!
    @IBOutlet var image10: UIImageView!
    @IBOutlet var image11: UIImageView!
    @IBOutlet var image12: UIImageView!
    @IBOutlet var image13: UIImageView!
    @IBOutlet var image14: UIImageView!
    @IBOutlet var image15: UIImageView!
    @IBOutlet var image16: UIImageView!
    @IBOutlet var image17: UIImageView!
    @IBOutlet var image18: UIImageView!
    @IBOutlet var image19: UIImageView!
    @IBOutlet var image20: UIImageView!
    @IBOutlet var image21: UIImageView!
    @IBOutlet var image22: UIImageView!
    @IBOutlet var image23: UIImageView!
    @IBOutlet var image24: UIImageView!
    @IBOutlet var image25: UIImageView!
    @IBOutlet var image26: UIImageView!
    @IBOutlet var image27: UIImageView!
    @IBOutlet var image28: UIImageView!
    @IBOutlet var image29: UIImageView!
    @IBOutlet var image30: UIImageView!
    @IBOutlet var image31: UIImageView!
    @IBOutlet var image32: UIImageView!
    @IBOutlet var image33: UIImageView!
    @IBOutlet var image34: UIImageView!
    @IBOutlet var image35: UIImageView!
    
    // 폭탄 이미지 터치 인식할 수 있도록 보이지 않는 버튼 선언
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var button10: UIButton!
    @IBOutlet var button11: UIButton!
    @IBOutlet var button12: UIButton!
    @IBOutlet var button13: UIButton!
    @IBOutlet var button14: UIButton!
    @IBOutlet var button15: UIButton!
    @IBOutlet var button16: UIButton!
    @IBOutlet var button17: UIButton!
    @IBOutlet var button18: UIButton!
    @IBOutlet var button19: UIButton!
    @IBOutlet var button20: UIButton!
    @IBOutlet var button21: UIButton!
    @IBOutlet var button22: UIButton!
    @IBOutlet var button23: UIButton!
    @IBOutlet var button24: UIButton!
    @IBOutlet var button25: UIButton!
    @IBOutlet var button26: UIButton!
    @IBOutlet var button27: UIButton!
    @IBOutlet var button28: UIButton!
    @IBOutlet var button29: UIButton!
    @IBOutlet var button30: UIButton!
    @IBOutlet var button31: UIButton!
    @IBOutlet var button32: UIButton!
    @IBOutlet var button33: UIButton!
    @IBOutlet var button34: UIButton!
    @IBOutlet var button35: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.topItem?.title = ""
        
        self.ongoingActivity.startAnimating()
        self.endGameView.isHidden = true
        
        image1.image = iconBomb
        image2.image = iconBomb
        image3.image = iconBomb
        image4.image = iconBomb
        image5.image = iconBomb
        image6.image = iconBomb
        image7.image = iconBomb
        image8.image = iconBomb
        image9.image = iconBomb
        image10.image = iconBomb
        image11.image = iconBomb
        image12.image = iconBomb
        image13.image = iconBomb
        image14.image = iconBomb
        image15.image = iconBomb
        image16.image = iconBomb
        image17.image = iconBomb
        image18.image = iconBomb
        image19.image = iconBomb
        image20.image = iconBomb
        image21.image = iconBomb
        image22.image = iconBomb
        image23.image = iconBomb
        image24.image = iconBomb
        image25.image = iconBomb
        image26.image = iconBomb
        image27.image = iconBomb
        image28.image = iconBomb
        image29.image = iconBomb
        image30.image = iconBomb
        image31.image = iconBomb
        image32.image = iconBomb
        image33.image = iconBomb
        image34.image = iconBomb
        image35.image = iconBomb
        
        for i in 0 ..< 35 {
            // 0~4까지의 수 (5개의 수)를 랜덤으로 생성해 확률을 정한다.(폭탄이 터질 확률 = 20%)
            let randNum: UInt32 = arc4random_uniform(UInt32(5))
            
            if randNum == 1 {
                bombArray[i] = ""
                bombNum += 1
            }
        }
        
        stateLabel.text = "Remain Bomb: \(bombNum)"
    }
    
    // 폭탄이 터질 경우의 처리를 위한 함수
    func touchBomb() {
        bombNum -= 1
        stateLabel.text = "Remain Bomb: \(bombNum)"
        
        if bombNum == 0 {
            self.ongoingActivity.stopAnimating()
            self.endGameView.isHidden = false
            gameStart = false
        }
    }
    
    // 이미지(버튼)을 선택했을 때 동작할 수 있도록 하는 Button Action 함수
    @IBAction func ongoingGame(_ sender: UIButton) {
        if sender == button1 {
            if let _ = bombArray[0] {
                image1.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image1.image = nil
            }
        }
        if sender == button2 {
            if let _ = bombArray[1] {
                image2.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image2.image = nil
            }
        }
        if sender == button3 {
            if let _ = bombArray[2] {
                image3.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image3.image = nil
            }
        }
        if sender == button4 {
            if let _ = bombArray[3] {
                image4.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image4.image = nil
            }
        }
        if sender == button5 {
            if let _ = bombArray[4] {
                image5.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image5.image = nil
            }
        }
        if sender == button6 {
            if let _ = bombArray[5] {
                image6.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image6.image = nil
            }
        }
        if sender == button7 {
            if let _ = bombArray[6] {
                image7.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image7.image = nil
            }
        }
        if sender == button8 {
            if let _ = bombArray[7] {
                image8.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image8.image = nil
            }
        }
        if sender == button9 {
            if let _ = bombArray[8] {
                image9.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image9.image = nil
            }
        }
        if sender == button10 {
            if let _ = bombArray[9] {
                image10.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image10.image = nil
            }
        }
        if sender == button11 {
            if let _ = bombArray[10] {
                image11.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image11.image = nil
            }
        }
        if sender == button12 {
            if let _ = bombArray[11] {
                image12.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image12.image = nil
            }
        }
        if sender == button13 {
            if let _ = bombArray[12] {
                image13.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image13.image = nil
            }
        }
        if sender == button14 {
            if let _ = bombArray[13] {
                image14.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image14.image = nil
            }
        }
        if sender == button15 {
            if let _ = bombArray[14] {
                image15.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image15.image = nil
            }
        }
        if sender == button16 {
            if let _ = bombArray[15] {
                image16.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image16.image = nil
            }
        }
        if sender == button17 {
            if let _ = bombArray[16] {
                image17.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image17.image = nil
            }
        }
        if sender == button18 {
            if let _ = bombArray[17] {
                image18.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image18.image = nil
            }
        }
        if sender == button19 {
            if let _ = bombArray[18] {
                image19.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image19.image = nil
            }
        }
        if sender == button20 {
            if let _ = bombArray[19] {
                image20.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image20.image = nil
            }
        }
        if sender == button21 {
            if let _ = bombArray[20] {
                image21.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image21.image = nil
            }
        }
        if sender == button22 {
            if let _ = bombArray[21] {
                image22.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image22.image = nil
            }
        }
        if sender == button23 {
            if let _ = bombArray[22] {
                image23.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image23.image = nil
            }
        }
        if sender == button24 {
            if let _ = bombArray[23] {
                image24.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image24.image = nil
            }
        }
        if sender == button25 {
            if let _ = bombArray[24] {
                image25.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image25.image = nil
            }
        }
        if sender == button26 {
            if let _ = bombArray[25] {
                image26.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image26.image = nil
            }
        }
        if sender == button27 {
            if let _ = bombArray[26] {
                image27.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image27.image = nil
            }
        }
        if sender == button28 {
            if let _ = bombArray[27] {
                image28.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image28.image = nil
            }
        }
        if sender == button29 {
            if let _ = bombArray[28] {
                image29.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image29.image = nil
            }
        }
        if sender == button30 {
            if let _ = bombArray[29] {
                image30.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image30.image = nil
            }
        }
        if sender == button31 {
            if let _ = bombArray[30] {
                image31.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image31.image = nil
            }
        }
        if sender == button32 {
            if let _ = bombArray[31] {
                image32.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image32.image = nil
            }
        }
        if sender == button33 {
            if let _ = bombArray[32] {
                image33.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image33.image = nil
            }
        }
        if sender == button34 {
            if let _ = bombArray[33] {
                image34.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image34.image = nil
            }
        }
        if sender == button35 {
            if let _ = bombArray[34] {
                image35.image = effectBang
                touchBomb()
            } else if gameStart == true {
                image35.image = nil
            }
        }
    }
}
