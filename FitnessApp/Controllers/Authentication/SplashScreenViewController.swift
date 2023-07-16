//
//  SplashScreenViewController.swift
//  FitnessApp
//
//  Created by Nadeen Maree on 08/07/2023.
//

import UIKit

class SplashScreenViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSplashScreen()
        
        let splashTimer = 3.0
        DispatchQueue.main.asyncAfter(deadline: .now() + splashTimer) {
            self.showMainViewController()
        }
    }
    
    private func setupSplashScreen() {
        view.backgroundColor = UIColor.white
        
        let logoImageView = UIImageView(image: UIImage(named: "logo"))
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoImageView)
        
        let fromLabel = UILabel()
        fromLabel.text = "From"
        fromLabel.font = UIFont(name: "Raleway", size: 17)
        fromLabel.textColor = UIColor(red: 30/255, green: 29/255, blue: 29/255, alpha: 1)
        fromLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fromLabel)
        
        let mainTextLabel = UILabel()
        mainTextLabel.text = "Fitness App"
        mainTextLabel.font = UIFont(name: "Raleway-Bold", size: 18)
        mainTextLabel.textColor = UIColor(red: 37/255, green: 211/255, blue: 102/255, alpha: 1)
        mainTextLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainTextLabel)
        
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            fromLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fromLabel.bottomAnchor.constraint(equalTo: mainTextLabel.topAnchor, constant: -5),
            
            mainTextLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainTextLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30)
        ])
    }
    
    private func showMainViewController() {
        let mainViewController = WelcomeViewController()
        mainViewController.modalPresentationStyle = .fullScreen
        present(mainViewController, animated: true, completion: nil)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .fade
    }
}

