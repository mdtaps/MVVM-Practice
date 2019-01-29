//
//  ColorViewModel.swift
//  ColorPal
//
//  Created by Mark Tapia on 1/28/19.
//  Copyright © 2019 Mark Tapia. All rights reserved.
//

import Foundation

final class ColorViewModel {
    var color: Box<Color>
    
    init(color: Color) {
        self.color = Box(color)
    }
    
    func darken() {
        color.value = color.value.scaled(0.9)
    }
    
    func lighten() {
        color.value = color.value.scaled(1.1)
    }
}
