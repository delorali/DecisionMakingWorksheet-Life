//
//  FirstStepViewController.swift
//  DecisionMakingWorksheet
//
//  Created by Delora Li on 6/24/20.
//  Copyright © 2020 Delora Li. All rights reserved.
//

import UIKit

class FirstStepViewController: UIViewController {
    
    @IBOutlet var backgroundGradientView: UIView!
    
    
    @IBOutlet weak var iAndRView: UIStackView!
    
    @IBOutlet weak var ChartView: UIStackView!
    
    var IssueFieldList = [issueField]()
    
    @IBOutlet weak var addIssueField: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
               gradientLayer.frame = view.bounds
               gradientLayer.colors = [UIColor(red: 15/255, green: 25/255, blue: 77/255, alpha: 1).cgColor, UIColor(red: 0/255, green: 6/255, blue: 39/255, alpha: 1).cgColor]
        
                gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
                gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
               gradientLayer.shouldRasterize = true
               backgroundGradientView.layer.addSublayer(gradientLayer)
        self.iAndRView.addArrangedSubview(setUpIssueFields())

    }
    
    @IBAction func AddIssueButtonClicked(_ sender: Any) {
        self.iAndRView.addArrangedSubview(setUpIssueFields())
    }
    
    func setUpIssueFields() -> issueField{
        let newIssueField = issueField(coder: <#NSCoder#>)
        IssueFieldList.append(newIssueField!)
        return newIssueField!
    }
    
    @IBAction func FinishStep1(_ sender: Any) {
        let issuesList = IssueList()
        for item in IssueFieldList{
            let newIssue = Issue(name: item.name, rating: item.rating)
            issuesList.addToList(issue: newIssue)
        }
        
    }
    
    
}

class issueField : UIView {
    @IBOutlet weak var IssueRatingField: UITextField!
    @IBOutlet weak var IssueField: UITextField!
    @IBOutlet weak var issueView: UIStackView!
    
    var name: String
    var rating : String
    let nibName = "IssueField"
    
  required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         commonInit()
     }
        
    func commonInit() {
            guard let view = loadViewFromNib() else { return }
            view.frame = self.bounds
            self.addSubview(view)
        }
        
    func loadViewFromNib() -> UIView? {
            let nib = UINib(nibName: nibName, bundle: nil)
            return nib.instantiate(withOwner: self, options: nil).first as? UIView
        }
    
    @IBAction func updateName(_ sender: Any) {
        self.name = IssueField.text ?? ""
    }
    @IBAction func updateRating(_ sender: Any) {
        self.rating = IssueRatingField.text ?? ""
    }
    
}

class chartIssue : UIView{
    
    let nibName = "ChartIssue"
    
    required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         commonInit()
     }
        
    func commonInit() {
            guard let view = loadViewFromNib() else { return }
            view.frame = self.bounds
            self.addSubview(view)
        }
        
    func loadViewFromNib() -> UIView? {
            let nib = UINib(nibName: nibName, bundle: nil)
            return nib.instantiate(withOwner: self, options: nil).first as? UIView
        }
    
}


