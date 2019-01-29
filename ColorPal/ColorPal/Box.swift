//
//  Box.swift
//  ColorPal
//
//  Created by Mark Tapia on 1/28/19.
//  Copyright © 2019 Mark Tapia. All rights reserved.
//

import Foundation

final class Box<T> {
    typealias Callback = (T) -> Void
    private var callback: Callback?
    
    var value: T {
        didSet {
            callback?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(callback: Callback?) {
        self.callback = callback
        callback?(value)
    }
}
