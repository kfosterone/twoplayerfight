//
//  ViewController.swift
//  Two Player FIghting Game
//
//  Created by greentea on 4/24/17.
//  Copyright © 2017 Kevin Foster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBOutlet weak var Player2: UIImageView!
    
    
    @IBOutlet weak var Player1: UIImageView!
    
    
    @IBOutlet weak var topText: UILabel!
    
    
    @IBOutlet weak var player1AttackBtn: UIButton!
    
    
    
    @IBOutlet weak var player2Attackbtn: UIButton!
    
    
    @IBOutlet weak var player1HP: UILabel!
    
    
    @IBOutlet weak var Player2HP: UILabel!
    
    var attackMultiplier = [1.2,1.5,2.0,2.2,0.5,3.0]
    
    var player1: Player{
        
    }
    var player2: Player{
        
    }
    
    

}

