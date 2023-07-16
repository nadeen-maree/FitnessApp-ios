//
//  GifViewController.swift
//  FitnessApp
//
//  Created by Nadeen Maree on 10/07/2023.
//

import UIKit
import Kingfisher // Library for getting gif from web.

class GifViewController: UIViewController
{
    @IBOutlet weak var exerciseName: UILabel!
    @IBOutlet weak var targetMuscle: UILabel!
    @IBOutlet weak var equipment: UILabel!
    @IBOutlet weak var exerciseDescription: UILabel!
    @IBOutlet weak var gif: UIImageView!
    
    var name = ""
    var muscle = ""
    var equipmentType = ""
    var exeDescription = ""
    var gifUrl = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        gif.roundCorners(corners:UIRectCorner.allCorners, radius: 5)
        exerciseName.text = name.capitalized
        targetMuscle.text = "Target Muscle: \(muscle.capitalized)"
        equipment.text = "Equipment: \(equipmentType.capitalized)"
        exerciseDescription.text = "Description: \(exeDescription.capitalized)"
        gif.kf.setImage(with: URL(string: gifUrl))
        print(gifUrl)
        
    }
}
