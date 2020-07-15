//
//  Issue.swift
//  DecisionMakingWorksheet
//
//  Created by Delora Li on 7/7/20.
//  Copyright © 2020 Delora Li. All rights reserved.
//

import Foundation

class Issue
{
    var name : String
    var rating : Int
    
    init(name:String, rating:String){
        self.name = name
        self.rating = Int(rating)!
    }
    
    func getName() -> String{
        return self.name
    }
    func getRating() -> Int{
        return self.rating
    }
}

