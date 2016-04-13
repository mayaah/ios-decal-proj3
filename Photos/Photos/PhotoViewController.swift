//
//  PhotoViewController.swift
//  Photos
//
//  Created by Maya Angelica Hernandez on 4/10/16.
//  Copyright © 2016 iOS DeCal. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var datePostedLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    var photo: Photo!

    override func viewDidLoad() {
        super.viewDidLoad()
        let screen = self.view.bounds
        let totalHeight: CGFloat = screen.width
        let totalWidth: CGFloat = screen.width
        
        self.imageView.frame = CGRectMake(0.0, 0.0, totalWidth, totalHeight)
        self.imageView.bounds = CGRectMake(0.0, 0.0, totalWidth, totalHeight)
        self.view.addSubview(self.imageView)
        let url = NSURL(string: photo.url)
        let data = NSData(contentsOfURL: url!)
        let img = UIImage(data: data!)
        imageView.image = img
        self.usernameLabel.text = photo.username
        self.likesLabel.text = "💟" + String(photo.likes)
        self.datePostedLabel.text = getDatePosted()
        

        let tap = UITapGestureRecognizer(target: self, action:Selector("onDoubleTap:"))
        tap.numberOfTapsRequired = 2
        view.userInteractionEnabled = true
        view.addGestureRecognizer(tap)

    }
    
    func onDoubleTap(sender:AnyObject) {
        self.likesLabel.text = "💓" + String(photo.likes + 1)
    }
    
    func getDatePosted() -> String {
        let date = NSDate(timeIntervalSince1970: NSTimeInterval(Int(photo.createdTime)!))
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MMMM dd, yyyy"
        return dateFormatter.stringFromDate(date)
        
    }
    
    


    
    
    
    
    
}
