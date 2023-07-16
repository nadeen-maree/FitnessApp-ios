//
//  LoadingView.swift
//  FitnessApp
//
//  Created by Nadeen Maree on 09/07/2023.
//

import UIKit

/// Loading view for indication of some loading operation is going on.
class LoadingView: UIView
{
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var loadingMessage:UILabel!
    
    public func showLoadingView(loadingMessage: String)
    {
        
        spinner.startAnimating()
        self.loadingMessage.text = loadingMessage
    }
}
