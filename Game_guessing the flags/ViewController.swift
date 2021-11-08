//
//  ViewController.swift
//  Game_guessing the flags
//
//  Created by 김승현 on 2021/11/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgBtn1: UIButton!
    @IBOutlet var imgBtn2: UIButton!
    @IBOutlet var imgBtn3: UIButton!
    
    var score = 0
    var Answer = 0

    var countries = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
  
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        imgBtn1.layer.borderWidth = 1
        imgBtn1.layer.borderColor = UIColor.black.cgColor
        imgBtn2.layer.borderWidth = 1
        imgBtn2.layer.borderColor = UIColor.black.cgColor
        imgBtn3.layer.borderWidth = 1
        imgBtn3.layer.borderColor = UIColor.black.cgColor
               
        button(action: nil)
    }
    
    func button(action: UIAlertAction! = nil) {
        countries.shuffle()
        Answer = Int.random(in: 0...2)
        title = countries[Answer].uppercased()
        
        imgBtn1.setImage(UIImage(named: countries[0]), for: .normal)
        imgBtn2.setImage(UIImage(named: countries[1]), for: .normal)
        imgBtn3.setImage(UIImage(named: countries[2]), for: .normal)
    }

    @IBAction func btnAction(_ sender: UIButton) {
        var title: String
        
        if sender.tag == Answer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong"
            score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "Score: \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: button))
        present(ac, animated: true)
    }
    
    
    
}

