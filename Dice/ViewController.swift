//
//  ViewController.swift
//  Dice
//
//  Created by Kabir on 14/11/2018.
//  Copyright © 2018 Kabir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    var RandomDiceIndex1: Int = 0
    var RandomDiceIndex2: Int = 0

    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
         updateDiceImages()
    }
    
    func updateDiceImages(){
        
        RandomDiceIndex1 = Int.random(in: 0 ... 5)
        RandomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[RandomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[RandomDiceIndex2])
        
    }
    
}

