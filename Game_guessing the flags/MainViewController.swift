//
//  MainViewController.swift
//  Game_guessing the flags
//
//  Created by 김승현 on 2021/11/08.
//

import UIKit

class MainViewController: UIViewController, sendDataDelegate {
    @IBOutlet weak var lastScore: UILabel!
    
    func updateLabelText(text: String) {
        lastScore.text = "Last Score : " + text
    }
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = ""
        let backBarButtonItem = UIBarButtonItem(title: "Go to Main", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = backBarButtonItem
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNext" {
            let vc = segue.destination as! ViewController
            vc.del = self
        }
    }
}
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


