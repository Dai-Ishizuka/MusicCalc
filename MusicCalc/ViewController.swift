//
//  ViewController.swift
//  MusicCalc
//
//  Created by 石塚大 on 2019/03/16.
//  Copyright © 2019 石塚大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var start: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        start.layer.cornerRadius = 5.0
        start.layer.borderColor = UIColor.white.cgColor
        start.layer.borderWidth = 0.5
        
    }
    
    @IBAction func restart (_ segue: UIStoryboardSegue){
        
    }


}

