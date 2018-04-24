//
//  SecondViewController.swift
//  First App Workshop
//
//  Created by Emmanuel Olivo on 20/04/18.
//  Copyright © 2018 Con Dos Emes. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // Outlets
    @IBOutlet weak var rocketBottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var rocketImageView: UIImageView!
    
    @IBOutlet weak var restartButton: UIButton!
    
    
    // Hide restart button when screen loads
    override func viewDidLoad() {
        super.viewDidLoad()
        restartButton.isHidden = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Change rocket position
        self.rocketBottomConstraint.constant = 300
      
        // Animate
        UIView.animate(withDuration: 2.5, animations: {
            self.view.layoutIfNeeded()
        }) { (finished) in
            
            // Show button when animation is finished
            self.restartButton.isHidden = false
            
        }
    }

    // Go back to first scren when restart button is pressed
    @IBAction func restartButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
