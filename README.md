# FitnessApp iOS App🏋️‍♀️

![FitnessX Logo](link-to-your-logo.png)

**FitnessApp** is a cutting-edge fitness iOS app designed to help users stay fit and achieve their fitness goals. With a seamless integration with Firebase, FitnessApp provides a user-friendly experience, allowing users to create profiles, access exercise categories, and view exercise details.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction

Maintaining a healthy lifestyle and achieving fitness goals can be challenging without the right tools. FitnessApp is a user-friendly iOS app that aims to make the fitness journey more accessible and enjoyable for users of all fitness levels. The app allows users to create accounts, access various exercise categories, and view detailed exercise information.

## Features

- **User Authentication**: Users can create a new account or log in to their existing account securely via Firebase authentication.

- **Exercise Categories**: FitnessApp provides exercise categories categorized by body parts, making it easier for users to find exercises relevant to their fitness goals.

- **Exercise Details**: Users can view detailed information for each exercise, including its name, equipment required, target muscle group, written description, and an animated GIF demonstrating the correct exercise technique.

- **Profile Section**: The app allows users to view their stored information, including their uploaded profile picture, and update their account details.

## Getting Started

### Prerequisites

- An iOS device or simulator running iOS 14.3.1 or later.
- Xcode 14.3.1 or later installed on your development machine.
- CocoaPods installed on your system. If you don't have CocoaPods installed, you can install it using the following command in Terminal:

### Installation

1. Clone the repository:
   
`$ git clone https://github.com/nadeen-maree/FitnessApp-ios.git`

`$ cd FitnessApp-ios`

2. Install the required dependencies using CocoaPods:

`$ pod install`

3. Open the Xcode workspace `FitnessApp-ios.xcworkspace` and build the project.

4. Set up your Firebase project and add the necessary configuration files (GoogleService-Info.plist) to the project.

5. Build and run the app on your iOS device or simulator.

## Usage

1. **Registration/Login**: Upon launching the app, new users can register by providing their details and creating a new account. Existing users can log in using their registered email and password.

2. **Dashboard**: Users will be presented with exercise categories listed by body parts. They can tap on any category to explore exercises in that specific category.

3. **Exercise Details**: Within a category, users can view a list of suggested exercises. Tapping on an exercise will display detailed information, including the exercise name, required equipment, target muscle group, written description, and a GIF animation demonstrating the correct exercise form.

4. **Profile**: Users can access their profile section to view their stored information and upload a profile picture.

## Screenshots

Include some visually appealing screenshots or a GIF showcasing your app's interface and features.


# Technologies Used:

### Foundation
- Swift5
- UIKit
- UICollectionView(with custom cell)
- UIScrollView
- UITabBarController
- Networking(URLSession)
  
### Dependencies 
- [Firebase](https://firebase.google.com)(for authentication and saving user data)
- [Kingfisher](https://github.com/onevcat/Kingfisher)(A light weight swift library to get images from the web)


## Contributing

We welcome contributions from the community. If you have any suggestions, bug fixes, or new features to add, please feel free to open a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Contact

If you have any questions or inquiries, please contact us at nadeen.maree1610@gmail.com. We'd love to hear from you!

---

Thank you for your interest in FitnessApp! We hope this app helps you achieve your fitness goals and leads you to a healthier lifestyle. Stay fit and stay motivated! 🏋️‍♀️🏃‍♂️

