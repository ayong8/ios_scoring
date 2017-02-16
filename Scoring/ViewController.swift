//
//  ViewController.swift
//  Scoring
//
//  Created by yong8 on 2/12/17.
//  Copyright © 2017 yong8. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var task: UITextField!
    @IBOutlet var scoreForTask: UITextField!
    @IBOutlet var totalScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterScore(_ sender: UIButton) {
        // app delegate는 싱글톤 객체이므로, 현재 생성되어 있는 인스턴스를 참조해야 한다 -> UIApplication.shared...
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        var totalScoreToInt = Int(self.totalScore.text!)! + Int(self.scoreForTask.text!)!
        appDelegate?.paramTotalScore = totalScoreToInt
    }

}

