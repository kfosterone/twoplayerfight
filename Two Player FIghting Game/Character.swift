//
//  Player.swift
//  Two Player FIghting Game
//
//  Created by greentea on 4/26/17.
//  Copyright © 2017 Kevin Foster. All rights reserved.
//

import Foundation



internal class Character
{
    
    private var _hp: Int = 200
    private var _attackPwr: Int = 20
    
    
    var attackPwr: Int {
        return _attackPwr
    }
    
    var hp: Int {
        return _hp
    }
    
    var isAlive: Bool {
        if hp <= 0 { return false } else {
            return true
        }
    }

    init(startingHP: Int, attackPwr: Int) {
        
        self._hp = startingHP
        self._attackPwr = attackPwr
        
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        return true
        
    }
    
    
}