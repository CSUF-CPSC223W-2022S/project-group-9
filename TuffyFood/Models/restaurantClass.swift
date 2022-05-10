//
//  restaurantStruct.swift
//  TuffyFood
//
//  Created by csuftitan on 2/22/22.
//

import Foundation

class restaurant {
    var title: String?
    var hours: String?
    var location: String?
    var rating: String?
    var priceRating: String?
    var image: String?
    
    init(name title: String, time hours: String, place location: String, price priceRating: String, image: String, rating: String) {
        self.title = title
        self.image = image
        self.hours = hours
        self.location = location
        self.priceRating = priceRating
        self.rating = rating
    }
    var allInfo: String{
        return "\(title!)'s hours are \(hours!), and they can be found at \(location!) with the price rating of \(priceRating!) out of 5. \(image!) has the rating of \(rating!)"
    }
    func titlePrint()->String?{
        return title
    }
    func hoursPrint()->String?{
        return hours
    }
    func locationPrint()->String?{
        return location
    }
    func priceRatingPrint()->String?{
        return priceRating
    }
    func imagePrint()->String?{
        return image
    }
    func ratingPrint()->String?{
        return rating
    }
}
