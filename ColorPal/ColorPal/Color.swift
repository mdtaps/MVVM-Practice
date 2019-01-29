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
        return Color(red: min(value*red, 1),
                     green: min(value * green, 1),
                     blue: min(value*blue, 1))
    }
}
