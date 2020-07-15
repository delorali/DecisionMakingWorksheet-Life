//
//  ThirdStepViewController.swift
//  DecisionMakingWorksheet
//
//  Created by Delora Li on 7/8/20.
//  Copyright © 2020 Delora Li. All rights reserved.
//

import UIKit

class ThirdStepViewController: UIViewController {

    @IBOutlet var backgroundGradientView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let gradientLayer = CAGradientLayer()
                      gradientLayer.frame = view.bounds
                      gradientLayer.colors = [UIColor(red: 15/255, green: 25/255, blue: 77/255, alpha: 1).cgColor, UIColor(red: 0/255, green: 6/255, blue: 39/255, alpha: 1).cgColor]
               
                       gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
                       gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
                      gradientLayer.shouldRasterize = true
                      backgroundGradientView.layer.addSublayer(gradientLayer)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
