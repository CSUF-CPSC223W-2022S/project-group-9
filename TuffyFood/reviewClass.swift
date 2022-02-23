//
//  reviewClass.swift
//  TuffyFood
//
//  Created by csuftitan on 2/22/22.
//

import Foundation

class Reviews {
    var anonymousCheck: Bool
    var name: String
    var comment: String
    var rating: Double
    
    init(name: String, comment: String, rating: Double, anonymousCheck: Bool) {
        self.anonymousCheck = anonymousCheck
        self.name = name
        self.comment = comment
        self.rating = rating
        
        if anonymousCheck == true {
            self.name = "Anonymous"
        }
    }
    
    func displayReview() {
        print("=============================\n")
        print("\(name) ~~~ Stars: \(rating)")
        print("   > \(comment)\n")
        print("=============================")
    }
}
