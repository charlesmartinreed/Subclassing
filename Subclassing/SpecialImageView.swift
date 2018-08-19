//
//  SpecialImageView.swift
//  Subclassing
//
//  Created by Charles Martin Reed on 8/18/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class SpecialImageView: UIImageView {
    
    //defining new properties for our class - computed properties
    //setters and getters
    var borderColor: CGColor? {
        //everytime we access border color, we either get the current value or we set it
        get {
            return self.layer.borderColor
        }
        
        set {
            self.layer.borderColor = newValue
        }
    }
    
    //this is just me screwing around, obviously this isn't particularly useful
    var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        
        set {
            self.layer.borderWidth = newValue
        }
    }
    

    //handling gesture recognition
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        //remember to enable User Interaction on the element in IB!
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(jumpAround))
        self.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func jumpAround() {
        UIView.animate(withDuration: 0.5, animations: {
            self.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (success: Bool) in
            UIView.animate(withDuration: 0.5, animations: {
                self.transform = CGAffineTransform.identity
            }, completion: nil)
        }
    }
    

}
