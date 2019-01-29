//
//  ColorCoordinator.swift
//  ColorPal
//
//  Created by Mark Tapia on 1/28/19.
//  Copyright © 2019 Mark Tapia. All rights reserved.
//

import UIKit

final class ColorCoordinator: Coordinator {
    
    private enum PresentationStyle {
        case root(UIWindow)
        case present(UIViewController)
    }
    
    private var presentationStyle: PresentationStyle
    
    init(window: UIWindow) {
        self.presentationStyle = .root(window)
    }
    
    init(viewController: UIViewController) {
        self.presentationStyle = .present(viewController)
    }
    
    func start() {
        let color = Color(red:0.1, green: 0.6, blue: 0.1)
        let viewModel = ColorViewModel(color: color)
        let viewController = ColorViewController.makeFromStoryboard()
        
        viewController.viewModel = viewModel
        
        switch presentationStyle {
        case .root(let window):
            window.rootViewController = viewController
            window.makeKeyAndVisible()
        case .present(let presentingViewController):
            presentingViewController.present(viewController, animated: true, completion: nil)
        }
    }
}
