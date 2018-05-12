//
//  UIButton.swift
//  Simpsons Trivia
//
//  Created by Edward de la Fuente on 5/11/18.
//  Copyright © 2018 Edward de la Fuente. All rights reserved.
//

import UIKit

extension UIButton {
    open override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = bounds.size.height / 2
        self.clipsToBounds = true
    }
}
