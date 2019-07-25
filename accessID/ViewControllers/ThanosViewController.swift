//
//  ThanosViewController.swift
//  accessID
//
//  Created by Oscar on 2019/07/24.
//  Copyright © 2019 Oscar. All rights reserved.
//

import UIKit

class ThanosViewController: UIViewController {

    @IBOutlet weak var emojiImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        applyAccessibility()
    }
    
    func applyAccessibility() {
        emojiImage.isAccessibilityElement = true
        emojiImage.accessibilityTraits = UIAccessibilityTraits.image
        emojiImage.accessibilityLabel = Data.myAccessibilityLabel
        emojiImage.accessibilityIdentifier = Data.myAccessibilityIdentifier
        emojiImage.accessibilityHint = Data.myAccessibilityHint
    }
}
