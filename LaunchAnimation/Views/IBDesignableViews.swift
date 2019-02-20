//
//  IBDesignableViews.swift
//  LaunchAnimation
//
//  Created by Alex Paul on 2/19/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

@IBDesignable
class CircularImageView: UIImageView {
  override func layoutSubviews() {
    super.layoutSubviews()
    contentMode = .scaleAspectFill
    layer.cornerRadius = bounds.width / 2.0
    layer.borderColor = UIColor.lightGray.cgColor
    layer.borderWidth = 0.5
    clipsToBounds = true
  }
}
