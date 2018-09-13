//
//  UIView+DJAdd.swift
//  DJUIKit
//
//  Created by qiushuitian on 2018/9/12.
//  Copyright © 2018 qiushuitian. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    public func dj_setLayerShadow(color:UIColor, offset:CGSize, radius:CGFloat) -> Void {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.shadowOpacity = 1
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }

    
}
