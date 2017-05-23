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
    
    
    @IBOutlet weak var restartButton: UIButton!
    
    @IBAction func restartButtonPressed(sender: AnyObject) {
    }
   
    @IBOutlet weak var gameOverLabel: UILabel!
    
    
    var whichPlayer = ""
    
    
    var player1_HP = 200
    
    var player2_HP = 200
 
  var attackBtn1Count = 0
    var attackBtn2Count = 0
    
    func gameOver1(){
        topText.text = "Player 1 Wins"
        gameOverLabel.hidden = false
        restartButton.hidden = false
        player1AttackBtn.enabled = false
        player2Attackbtn.enabled = false
        
        
    }
    
    func gameOver2(){
        
        topText.text = "Player 2 Wins"
        gameOverLabel.hidden = false
        restartButton.hidden = false
        player1AttackBtn.enabled = false
        player2Attackbtn.enabled = false
        player1_HP = 200
        player2_HP = 200
    
    }
    
    
    
    @IBAction func attackBtn1Pressed(sender: AnyObject) {
        
        if player2_HP >= 51{
    
    player2_HP -= 50
    topText.text = "Player 1 attacked for 50 HP"
        Player2HP.text = "\(player2_HP) HP"}
        else { gameOver1()}
       
        
        
    }
    
    
    
    
    @IBAction func attackBtn2Pressed(sender: AnyObject) {
        
        
        if player1_HP >= 51 {
        
        
        player1_HP -= 50
            topText.text = "Player 2 attacked for 50 HP"
        player1HP.text = "\(player1_HP) HP"} else { gameOver2()}
        
    }
    
    @IBAction func restartBtnPressed(sender: AnyObject) {
        restartButton.hidden = true
        player1AttackBtn.enabled = true
        player2Attackbtn.enabled = true
        player2_HP = 200
        player1_HP = 200
        topText.text = "Tap the button to attack other player!"
        Player2HP.text = "200 HP"
        player1HP.text = "200 HP"
        gameOverLabel.hidden = true
        
    }
    
    
    
}