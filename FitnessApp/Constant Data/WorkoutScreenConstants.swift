//
//  WorkoutScreenConstants.swift
//  FitnessApp
//
//  Created by Nadeen Maree on 10/07/2023.
//

import UIKit

/// Struct to store constants string used is workout screen
struct WorkoutScreenConstants
{
    /// Array for storing API endpoints body name with respective card image
    public static let bodyPart: [String] = ["cardio","shoulders","upper%20arms","lower%20arms","chest","back","upper%20legs","lower%20legs"]
    
    /// Array for storing the card images.
    public static let cardImages: [UIImage] = [UIImage(named: "cardioImg")!,UIImage(named: "shoulderImg")!,UIImage(named: "upperArmImg")!,UIImage(named: "lowerArmImg")!,UIImage(named: "chestImg")!,UIImage(named: "backImg")!,UIImage(named: "upperLegeImg")!,UIImage(named: "loweLegImg")!]
    
    /// Array for stroing the workout name.
    public static let workoutName: [String] = ["Cardio","Shoulders","Upper arms","Lower arms","Chest","Back","Upper legs","Lower legs"]
    
    /// Array for storing total workouts from API.
    public static let totalWorkouts: [Int] = [10,7,6,6,7,5,5,6]
}

