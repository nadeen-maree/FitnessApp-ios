//
//  WelcomeViewController.swift
//  FitnessApp
//
//  Created by Nadeen Maree on 09/07/2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeMessege: UILabel!
    @IBOutlet weak var FitnessAppText: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    
    let relativeFontConstant1: CGFloat = 0.14
    let relativeFontConstant2: CGFloat = 0.14
    let relativeFontConstant3: CGFloat = 0.05
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Delay the font adjustments until the view is fully loaded
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.welcomeMessege.font = self.welcomeMessege.font.withSize(self.view.frame.width * self.relativeFontConstant1)
            self.FitnessAppText.font = self.FitnessAppText.font.withSize(self.view.frame.width * self.relativeFontConstant2)
            self.descriptionText.font = self.descriptionText.font.withSize(self.view.frame.width * self.relativeFontConstant3)
        }
    }
    
    @IBAction func continueButtonTapped(_ sender: Any) {
        print("Continue button pressed")
    }
}

