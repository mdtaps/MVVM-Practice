//
//  Color+UIKit.swift
//  ColorPal
//
//  Created by Mark Tapia on 1/28/19.
//  Copyright © 2019 Mark Tapia. All rights reserved.
//

import Foundation
import UIKit

extension Color {
    var uiColor: UIColor {
        return UIColor.init(displayP3Red: red, green: green, blue: blue, alpha: 1)
    }
}
