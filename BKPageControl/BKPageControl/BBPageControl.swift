//
//  BBPageControl.swift
//  Tasker
//
//  Created by MAC193 on 8/3/18.
//  Copyright © 2018 MAC240. All rights reserved.
//

import UIKit
class BBPageControl: UIControl {
    //Current page logic
    @IBInspectable var currentPage: Int{
        set(newValue) {
            internalCurrentPage = max(0, min(newValue, internalTotalPages-1))
        }
        get {
            return internalCurrentPage
        }
    }
    private var internalCurrentPage: Int = 0{
        didSet{
            self.setNeedsDisplay();
        }
    }
    //Number of page logic
    @IBInspectable var totalPages: Int{
        set(newValue) {
            internalTotalPages = max(internalCurrentPage+1,newValue)
        }
        get {
            return internalTotalPages
        }
    }
    private var internalTotalPages: Int = 3{
        didSet{
            self.setNeedsDisplay();
        }
    }
    //--------------------------
    @IBInspectable var image : UIImage!
    private var imageView : UIImageView!;
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func layoutSubviews() {
        super.layoutSubviews();
        if (imageView == nil)
        {
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40));
            imageView.translatesAutoresizingMaskIntoConstraints = false;
            imageView.backgroundColor = UIColor.red;
            self.addSubview(imageView);
            self.setupConstraints();
            self.layoutIfNeeded()
        }
    }
    override func draw(_ rect: CGRect) {
        imageView.image = image;
    }
    func setupConstraints()->Void {
        let widthConstarint = NSLayoutConstraint(item: imageView,
                                                 attribute: NSLayoutAttribute.width,
                                                 relatedBy: NSLayoutRelation.equal,
                                                 toItem: nil,
                                                 attribute: NSLayoutAttribute.notAnAttribute,
                                                 multiplier: 0.5,
                                                 constant: 100);
        imageView.addConstraint(widthConstarint);
        
        let heightConstarint = NSLayoutConstraint(item: imageView,
                                                 attribute: NSLayoutAttribute.height,
                                                 relatedBy: NSLayoutRelation.equal,
                                                 toItem: nil,
                                                 attribute: NSLayoutAttribute.notAnAttribute,
                                                 multiplier: 0.5,
                                                 constant: 100);
        imageView.addConstraint(heightConstarint);

        let centerX = NSLayoutConstraint(item: imageView,
                                        attribute: NSLayoutAttribute.centerX,
                                        relatedBy: NSLayoutRelation.equal,
                                        toItem: self,
                                        attribute: NSLayoutAttribute.centerX,
                                        multiplier: 1,
                                        constant: 0);
        self.addConstraint(centerX);
        let centerY = NSLayoutConstraint(item: imageView,
                                       attribute: NSLayoutAttribute.centerY,
                                       relatedBy: NSLayoutRelation.equal,
                                       toItem: self,
                                       attribute: NSLayoutAttribute.centerY,
                                       multiplier: 1,
                                       constant: 0);
        self.addConstraint(centerY);
    }
}
