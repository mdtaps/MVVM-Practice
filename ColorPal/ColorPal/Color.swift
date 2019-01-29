//
//  Color.swift
//  ColorPal
//
//  Created by Mark Tapia on 1/28/19.
//  Copyright © 2019 Mark Tapia. All rights reserved.
//

import Foundation
import struct CoreGraphics.CGFloat

struct Color {
    var red, green, blue: CGFloat
    
    func scaled(_ value: CGFloat) -> Color {
        return Color(min(red: value*red, 1),
                     min(green: value * green, 1),
                     min(blue: value*blue, 1))
    }
}
