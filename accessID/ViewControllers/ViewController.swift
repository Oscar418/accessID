//
//  ViewController.swift
//  accessID
//
//  Created by Oscar on 2019/07/23.
//  Copyright © 2019 Oscar. All rights reserved.
//

import UIKit
import Disintegrate

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var customScroll: UIScrollView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var fourthImage: UIImageView!
    @IBOutlet weak var fifthImage: UIImageView!
    @IBOutlet weak var sixthImage: UIImageView!
    @IBOutlet weak var tenthImage: UIImageView!
    @IBOutlet weak var ninethImage: UIImageView!
    @IBOutlet weak var seventhImage: UIImageView!
    @IBOutlet weak var eighthImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.customScroll.delegate = self
        eliminateCharacters()
    }
    
    func eliminateCharacters() {
        
        firstImage.disintegrate(direction: .left, estimatedTrianglesCount: 50)
        sixthImage.disintegrate(direction: .right, estimatedTrianglesCount: 50)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5), execute: {
            self.scrollDown()
        })
    }
    
    func scrollDown() {
        customScroll.setContentOffset(CGPoint(x: 0, y: 300), animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
            self.eliminateNineAndTen()
        })
    }
    
    func eliminateNineAndTen(){
        ninethImage.disintegrate(direction: .down, estimatedTrianglesCount: 50)
        tenthImage.disintegrate(direction: .right, estimatedTrianglesCount: 50)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5), execute: {
            self.eliminateSpiderMan()
        })
    }
    
    func eliminateSpiderMan() {
        customScroll.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        fourthImage.disintegrate(direction: .upperLeft, estimatedTrianglesCount: 50)
    }
}
