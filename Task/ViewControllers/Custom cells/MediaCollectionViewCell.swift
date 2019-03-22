//
//  MediaCollectionViewCell.swift
//  Task
//
//  Created by Rajat Sharma on 22/03/19.
//  Copyright © 2019 Rajat Sharma. All rights reserved.
//

import UIKit

class MediaCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.contentView.layer.cornerRadius = 5.0
        self.layer.shadowPath = UIBezierPath(rect: self.frame).cgPath
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 2.0
        self.layer.shadowOffset = .zero
        self.layer.masksToBounds = false
        self.contentView.layer.masksToBounds = true
        
    }
    
}

