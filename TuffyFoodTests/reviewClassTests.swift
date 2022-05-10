//
 //  ReviewClassTests.swift
 //  TuffyFoodTests
 //
 //  Created by csuftitan on 3/9/22.
 //

 import Foundation
 import XCTest
 @testable import TuffyFood

 class ReviewClassTests: XCTestCase {

     override func setUpWithError() throws {

     }

     override func tearDownWithError() throws {

     }
     
     func testAuthorExists() {
         let testReview = Reviews(author: "Justin", content: "I love Panda Express!", rating: "5")
         
         XCTAssertEqual(testReview.author, "Justin")
     }
     
     func testContentExists() {
         let testReview = Reviews(author: "Justin", content: "I love Panda Express!", rating: "5")
         
         XCTAssertEqual(testReview.content, "I love Panda Express!")
     }
     
     func testRatingExists() {
         let testReview = Reviews(author: "Justin", content: "I love Panda Express!", rating: "5")
         
         XCTAssertEqual(testReview.rating, "5")
     }
 }
