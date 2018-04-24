//
//  SecondViewController.swift
//  First App Workshop
//
//  Created by Emmanuel Olivo on 20/04/18.
//  Copyright © 2018 Con Dos Emes. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var rocketBottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var rocketImageView: UIImageView!
    
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restartButton.isHidden = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.rocketBottomConstraint.constant = 300
      
        
        UIView.animate(withDuration: 2.5, animations: {
            self.view.layoutIfNeeded()
        }) { (finished) in
            
            self.restartButton.isHidden = false
            
        }
    }

    @IBAction func restartButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
