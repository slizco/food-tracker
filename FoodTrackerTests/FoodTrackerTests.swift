//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Slizco on 4/26/19.
//  Copyright © 2019 Slizco. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    // MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealIntitializationSucceeds() {
        
        // Zero rating
        let zeroRatingMeal  = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the Meal initializer returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
}
