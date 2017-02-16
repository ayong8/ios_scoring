//
//  SecondVC.swift
//  Scoring
//
//  Created by yong8 on 2/16/17.
//  Copyright © 2017 yong8. All rights reserved.
//

import UIKit

class SecondVC : UIViewController {
    @IBOutlet var resultTotalScore : UILabel!
    
    // 화면이 표시될 때마다 호출되는 메서드
    override func viewWillAppear(_ animated: Bool) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        if let totalScore = appDelegate?.paramTotalScore {
            self.resultTotalScore.text = "\(totalScore)"
        }
    }
}
