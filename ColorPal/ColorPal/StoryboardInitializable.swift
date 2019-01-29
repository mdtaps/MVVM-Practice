//
//  StoryboardInitializable.swift
//  ColorPal
//
//  Created by Mark Tapia on 1/28/19.
//  Copyright © 2019 Mark Tapia. All rights reserved.
//

import UIKit

protocol StoryboardInitializable {
    static var storyboardBundle: Bundle? { get }
    static var stroyboardName: String {get }
    static var storyboardIdentifier: String { get }
    static func makeFromStoryboard() -> Self
}

extension StoryboardInitializable {
    static var storyboardBundle: Bundle? {
        return nil
    }
    static var stroyboardName: String {
        return "Main"
    }
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    static func makeFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: stroyboardName, bundle: storyboardBundle)
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}

