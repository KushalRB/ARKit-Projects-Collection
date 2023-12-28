//
//  ViewController.swift
//  ObjectPlacementin3DSpace
//
//  Created by Kushal Rajbhandari on 11/29/17.
//  Copyright © 2017 Kushal Rajbhandari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backGroundImage: UIImageView!
    @IBOutlet weak var infoLabel1: UILabel!
    @IBOutlet weak var infoLabel2: UILabel!
    @IBOutlet weak var backGroundView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var demoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backGroundImage.alpha = 0
        self.infoLabel1.alpha = 0
        self.infoLabel2.alpha = 0
        self.backGroundView.alpha = 0
        self.titleLabel.alpha = 0
        self.demoButton.alpha = 0
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.infoLabel1.text = "Augmented reality (AR) describes user experiences that add 2D or 3D elements to the live view from a device's camera in a way that makes those elements appear to inhabit the real world. "
        self.infoLabel2.text = "ARKit integrates iOS device camera and motion features to produce augmented reality."
        UIView.animate(withDuration: 1, animations: {
            self.backGroundImage.alpha = 1
        }) { (true) in
            self.showTitleLabel()
        }
    }
    
    func showTitleLabel(){
        UIView.animate(withDuration: 1, animations: {
            self.titleLabel.alpha = 1
        }) { (true) in
            self.showBackGroundView()
        }
    }
    
    func showBackGroundView(){
        UIView.animate(withDuration: 1, animations: {
            self.backGroundView.alpha = 0.65
        }) { (true) in
            self.showInfoLabel1()
        }
    }
    
    func showInfoLabel1(){
        UIView.animate(withDuration: 1, animations: {
            self.infoLabel1.alpha = 1
        }) { (true) in
            self.showInfoLabel2()
        }
        
    }
    
    func showInfoLabel2(){
        UIView.animate(withDuration: 1, animations: {
            self.infoLabel2.alpha = 1
        }) { (true) in
            self.showDemoButton()
        }
    }
    
    func showDemoButton(){
        UIView.animate(withDuration: 1) {
            self.demoButton.alpha = 1
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
}

