//
//  ViewController.swift
//  Subclassing
//
//  Created by Charles Martin Reed on 8/18/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var specialImageView1: SpecialImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        specialImageView1.borderColor = UIColor.blue.cgColor
        specialImageView1.borderWidth = 10.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

