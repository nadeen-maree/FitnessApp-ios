//
//  ExerciseListViewController.swift
//  FitnessApp
//
//  Created by Nadeen Maree on 10/07/2023.
//

import UIKit

class ExerciseListViewController: UIViewController
{
    
    @IBOutlet weak var workoutsListTableView: UITableView!
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var transparentImage: UIImageView!
    @IBOutlet weak var workoutNameText: UILabel!
    @IBOutlet weak var totalWorkoutsText: UILabel!
    
    var viewControllerTitle = ""
    var image = UIImage()
    var workoutName: String = ""
    var totalWorkouts: Int = 0
    var bodyPart = ""
    
    // For storing exercises
    var exerciseListData:ExerciseListDataModel = ExerciseListDataModel(exerciseGIF: [], exerciseName: [],targetMuscle: [],exerciseEquipment: [], exerciseDescription: [])
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = viewControllerTitle
        configureCard(image: self.image,workoutName: self.workoutName, totalWorkouts: self.totalWorkouts)
        
        // Mock Data
        mockExerciseListData(bodyPart: bodyPart)
    
    }
    
    // Function to populate exercise list view controller with mock data with selected body part.
    private func mockExerciseListData(bodyPart: String)
    {
        
        switch bodyPart
        {
        case "cardio":
            exerciseListData = ExerciseList.shared.mockData[0]
        case "shoulders":
            exerciseListData = ExerciseList.shared.mockData[1]
        case "upper%20arms":
            exerciseListData = ExerciseList.shared.mockData[2]
        case "lower%20arms":
            exerciseListData = ExerciseList.shared.mockData[3]
        case "chest":
            exerciseListData = ExerciseList.shared.mockData[4]
        case "back":
            exerciseListData = ExerciseList.shared.mockData[5]
        case "upper%20legs":
            exerciseListData = ExerciseList.shared.mockData[6]
        case "lower%20legs":
            exerciseListData = ExerciseList.shared.mockData[7]
        default:
            exerciseListData = ExerciseListDataModel(exerciseGIF: [], exerciseName: [], targetMuscle: [], exerciseEquipment: [], exerciseDescription: [])
        }
    }
    
    // Method to configure the card view.
    public func configureCard(image:UIImage,workoutName: String,totalWorkouts: Int)
    {
        cardImage?.image = image
        workoutNameText?.text = workoutName
        totalWorkoutsText?.text = "Total workouts: \(totalWorkouts)"
        makeRoundedCorners()
    }
    
    // Make the image corners rounded.
    private func makeRoundedCorners()
    {
        cardImage?.layer.cornerRadius = 10.0 // Make cell rounded
        cardImage?.layer.borderWidth = 0.5 // Set a line along the border
        cardImage?.layer.borderColor = UIColor.gray.cgColor // Set the color of border line
        transparentImage?.layer.cornerRadius = 10.0 // Setting card image corner radius
    }
    
}
// MARK: Extention for exercise list table view

extension ExerciseListViewController: UITableViewDelegate,UITableViewDataSource
{
    // Returns the number of cell.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    
        return exerciseListData.exerciseName.count
    
    }
    
    // Populates data in table view cell.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseListCell", for: indexPath) as! ExerciseListCell
        
        // Populate cells with data.
        cell.configureCell(name: exerciseListData.exerciseName[indexPath.row].capitalized, targetMuscle: exerciseListData.targetMuscle[indexPath.row].capitalized, equipment: exerciseListData.exerciseEquipment[indexPath.row].capitalized, description: exerciseListData.exerciseDescription[indexPath.row].capitalized)
                
        return cell
    }
    
    /// Send data to next vc when cell of tableview is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseListCell", for: indexPath) as! ExerciseListCell
        
        // Innstance of ExerciseListVC
        let vc = storyboard?.instantiateViewController(withIdentifier: "gifViewController") as? GifViewController
        
        
        // Populating card view of exercise view controller with selected table view cell with Data.
        
        cell.passData(vc: vc, name: exerciseListData.exerciseName[indexPath.row], muscle: exerciseListData.targetMuscle[indexPath.row], equipment: exerciseListData.exerciseEquipment[indexPath.row], description: exerciseListData.exerciseDescription[indexPath.row], gifUrl: exerciseListData.exerciseGIF[indexPath.row])
    
        // To navigate from WorkoutsVC to ExerciseListVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

