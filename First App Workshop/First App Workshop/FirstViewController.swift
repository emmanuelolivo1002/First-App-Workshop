//
//  FirstViewController.swift
//  First App Workshop
//
//  Created by Emmanuel Olivo on 20/04/18.
//  Copyright © 2018 Con Dos Emes. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func ignitionButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondViewController", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    

}
