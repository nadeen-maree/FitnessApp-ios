//
//  ExerciseListCell.swift
//  FitnessApp
//
//  Created by Nadeen Maree on 10/07/2023.
//

import UIKit

class ExerciseListCell: UITableViewCell
{
    
    @IBOutlet weak var exerciseName: UILabel!
    @IBOutlet weak var targetMuscleName: UILabel!
    @IBOutlet weak var equipmentName: UILabel!
    
    public func configureCell(name: String,targetMuscle: String,equipment: String, description: String)
    {
        exerciseName.text = name
        targetMuscleName.text = "Target Muscle: \(targetMuscle)"
        equipmentName.text = "Equipment: \(equipment)"
    }
    
    public func passData(vc: GifViewController? ,name: String, muscle: String, equipment: String, description: String, gifUrl: String)
    {
        vc?.name = name
        vc?.muscle = muscle
        vc?.equipmentType = equipment
        vc?.exeDescription = description
        vc?.gifUrl = gifUrl
    }
}
