//
//  ColorViewController.swift
//  ColorPal
//
//  Created by Mark Tapia on 1/28/19.
//  Copyright © 2019 Mark Tapia. All rights reserved.
//

import UIKit

final class ColorViewController: UIViewController {
    
    var viewModel: ColorViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.color.bind { [unowned self] color in
            self.view.backgroundColor = color.uiColor
            self.textLabel.text = format(color, hexFormatter)
        }
    }

    @IBOutlet weak var ligthenButton: UIButton!
    
    @IBOutlet weak var darkenButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    @IBAction func lightenTapped(_ sender: UIButton) {
        viewModel.lighten()
    }
    @IBAction func darkenTapped(_ sender: UIButton) {
        viewModel.darken()
    }
}

extension ColorViewController: StoryboardInitializable {
    
}

