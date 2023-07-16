//
//  ExerciseListDataModel.swift
//  FitnessApp
//
//  Created by Nadeen Maree on 10/07/2023.
//

import Foundation

///Struct for storing exercise list data.
struct ExerciseListDataModel: Codable
{
    var exerciseGIF: [String]
    var exerciseName: [String]
    var targetMuscle: [String]
    var exerciseEquipment: [String]
    var exerciseDescription: [String]
}
