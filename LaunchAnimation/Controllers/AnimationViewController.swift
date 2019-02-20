//
//  LaunchViewController.swift
//  LaunchAnimation
//
//  Created by Alex Paul on 2/19/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {
  
  @IBOutlet var launchView: AnimationView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    UIView.animate(withDuration: 1.0, delay: 0.2, options: [], animations: {
      self.launchView.launchImageView.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
    }) { (done) in
      let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
      let viewController = mainStoryboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
      viewController.modalTransitionStyle = .crossDissolve
      viewController.modalPresentationStyle = .overCurrentContext
      self.present(viewController, animated: true)
    }
  }
  
}
