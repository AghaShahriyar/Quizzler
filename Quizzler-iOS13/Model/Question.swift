//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Agha Shahriyar Khan on 07/01/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

struct Question{
    var text : String
    var multipleAnswer : [String]
    var correctAnswer : String
    
    init(q:String,a:[String],correctAnswer:String) {
        self.text = q
        self.multipleAnswer = a
        self.correctAnswer = correctAnswer
    }
}
