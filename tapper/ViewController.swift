//
//  ViewController.swift
//  tapper
//
//  Created by Ali Haghighat doost on 4/24/16.
//  Copyright © 2016 Sivar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet weak var logoImg : UIImageView!
    @IBOutlet weak var howManyTapsTxt : UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn : UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    
    
    @IBAction func onPlayBtnPressed(sender:UIButton!){
        
        if (howManyTapsTxt.text != nil && howManyTapsTxt.text != ""){
            
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playBtn.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            updateTapsLbl()
        }
        
    }
    
    @IBAction func onTapBtnPressed(sender:UIButton!){
    
        currentTaps += 1
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        howManyTapsTxt.hidden = false
        playBtn.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true

    }
    
    func isGameOver() -> Bool {
        return currentTaps >= maxTaps
    }
    
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) Taps"
    }


}

