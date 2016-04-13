//
//  PhotosCollectionViewCell.swift
//  Photos
//
//  Created by Maya Angelica Hernandez on 4/10/16.
//  Copyright © 2016 iOS DeCal. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
    }

    
}
