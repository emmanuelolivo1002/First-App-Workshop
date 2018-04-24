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
    
    
    @IBOutlet weak var rocketImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocketImageView.frame = CGRect(x: 0, y: 140, width: 375, height: 402)
        }) { (finished) in
           print("Done")
        }
        
        
    }


}
