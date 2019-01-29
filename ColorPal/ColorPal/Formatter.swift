//
//  Formatter.swift
//  ColorPal
//
//  Created by Mark Tapia on 1/28/19.
//  Copyright © 2019 Mark Tapia. All rights reserved.
//

import Foundation

struct Formatter<T> {
    let render: (T) -> String
}

func format<T>(_ value: T, _ formatter: Formatter<T>) -> String {
    return formatter.render(value)
}

let hexFormatter = Formatter<Color> { color in
    return String(format: "#%02X%02X%02X",
                  Int(color.red*255),
                  Int(color.green*255),
                  Int(color.blue*255))
}

let plainFormatter = Formatter<Color> { color in
    return String(describing: color)
}

