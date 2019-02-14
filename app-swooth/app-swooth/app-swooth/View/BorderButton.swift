//
//  BorderButton.swift
//  app-swooth
//
//  Created by bobahasseb on 2/7/19.
//  Copyright © 2019 bobahasseb. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
}
