//
//  ViewController.swift
//  Make A Bet
//
//  Created by 김예빈 on 2018. 4. 18..
//  Copyright © 2018년 김예빈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var iconImageView: UIImageView!
    
    let iconRoulette = UIImage(named: "Roulette Icon.png")
    let iconSelection = UIImage(named: "Selection Icon.png")
    let iconBomb = UIImage(named: "Bomb Icon.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        iconImageView.image = iconRoulette
    }
    
    @IBAction func selectSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            iconImageView.image = iconRoulette
        } else if sender.selectedSegmentIndex == 1 {
            iconImageView.image = iconSelection
        } else if sender.selectedSegmentIndex == 2 {
            iconImageView.image = iconBomb
        }
    }
    
    @IBAction func moveView(_ sender: UIButton) {
        if iconImageView.image == iconRoulette {
            self.performSegue(withIdentifier: "roulette", sender: sender)
        } else if iconImageView.image == iconSelection {
            self.performSegue(withIdentifier: "selection", sender: sender)
        } else if iconImageView.image == iconBomb {
            self.performSegue(withIdentifier: "bomb", sender: sender)
        }
    }
}
