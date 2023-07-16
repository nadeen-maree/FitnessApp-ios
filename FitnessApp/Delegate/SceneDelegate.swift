//
//  SceneDelegate.swift
//  FitnessApp
//
//  Created by Nadeen Maree on 08/07/2023.
//

import UIKit
import FirebaseAuth

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func changeRootViewController(_ vc: UIViewController, animated: Bool = true)
       {
           guard let window = self.window else
           {
               return
           }
           
           // change the root view controller to specific view controller
           window.rootViewController = vc
       }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        
        let splashScreenViewController = SplashScreenViewController()
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = splashScreenViewController
        
        self.window = window
        window.makeKeyAndVisible()
        
        
        let mainStoryboard = UIStoryboard(name: Storyboards.Name.Main, bundle: nil)
                let tabBarStoryboard = UIStoryboard(name: Storyboards.Name.TabBar, bundle: nil)
                
                // If user is logged in before.
        if (Auth.auth().currentUser?.email) != nil
                {
                    
                    // instantiate the tab bar controller and set it as root view controller
                    let tabBarController = tabBarStoryboard.instantiateViewController(withIdentifier: Storyboards.VCID.TabBarController)
                    window.rootViewController = tabBarController
                    
                }
                
                else
                {
                    // if user isn't logged in
                    // instantiate the navigation controller and set it as root view controller
                    let signInNavController = mainStoryboard.instantiateViewController(withIdentifier: Storyboards.VCID.SignInNavigationController)
                    window.rootViewController = signInNavController
                }
    }
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

