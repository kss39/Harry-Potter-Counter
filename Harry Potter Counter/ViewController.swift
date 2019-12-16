//
//  ViewController.swift
//  Harry Potter Counter
//
//  Created by Tianyang Wang on 2019/12/15.
//  Copyright © 2019 Tianyang Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let counter = Counter()
    
    
    @IBOutlet weak var hpCounter: UILabel!
    @IBOutlet weak var attackCounter: UILabel!
    @IBOutlet weak var badgeCounter: UILabel!
    
    
    @IBAction func hpAdd(_ sender: Any) {
        counter.hp = counter.hp + 1
        updateViewFromModel()
    }
    
    @IBAction func hpSub(_ sender: Any) {
        counter.hp = counter.hp - 1
        updateViewFromModel()
    }
    
    @IBAction func attackAdd(_ sender: Any) {
        counter.attack = counter.attack + 1
        updateViewFromModel()
    }
    
    @IBAction func attackSub(_ sender: Any) {
        counter.attack = counter.attack - 1
        updateViewFromModel()
    }
    
    @IBAction func badgeAdd(_ sender: Any) {
        counter.badge = counter.badge + 1
        updateViewFromModel()
    }
    
    
    @IBAction func badgeSub(_ sender: Any) {
        counter.badge = counter.badge - 1
        updateViewFromModel()
    }
    
    func updateViewFromModel() {
        hpCounter.text = "\(counter.hp) ❤️"
        attackCounter.text = "\(counter.attack) ⚡️"
        badgeCounter.text = "\(counter.badge) 💰"
    }
}

