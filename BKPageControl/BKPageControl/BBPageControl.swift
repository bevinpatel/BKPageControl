//
//  BBPageControl.swift
//  Tasker
//
//  Created by MAC193 on 8/3/18.
//  Copyright © 2018 MAC240. All rights reserved.
//

import UIKit

@IBDesignable
class BBPageControl : UIView {
    //MARK: IBInspectable Variables
    @IBInspectable var currentPage: Int{
        set(newValue) {
            internalCurrentPage = max(0, min(newValue, internalTotalPages-1))
        }
        get {
            return internalCurrentPage
        }
    }
    @IBInspectable var totalPages: Int{
        set(newValue) {
            internalTotalPages = max(internalCurrentPage+1,newValue)
        }
        get {
            return internalTotalPages
        }
    }
    //MARK:-
    //MARK: Private Variables
    private var internalCurrentPage: Int = 0{
        didSet{
            self.setNeedsDisplay();
        }
    }
    private var internalTotalPages: Int = 3{
        didSet{
            self.setNeedsDisplay();
        }
    }
    //--------------
    private var line : LineLayer {
        let line = LineLayer()
        self.layer.addSublayer(line)
        return line
    }
    lazy var myLine : LineLayer = self.line
    //--------------
    private var knob : KnobLayer {
        let knob = KnobLayer()
        self.layer.addSublayer(knob)
        return knob
    }
    lazy var myKnob : KnobLayer = self.knob
    //MARK:-
    override func layoutSubviews() {
        myLine.frame    = self.bounds;
        myLine.path     = myLine.linePath(myLine,0,30);
        
        myKnob.frame    = self.bounds;
        myKnob.path     = myKnob.knowPath(myKnob,10,20);
    }
}
class LineLayer : CAShapeLayer {
    fileprivate let linePath = { (this : LineLayer, index : Int, total : Int) -> CGPath in
        let width : CGFloat = CGFloat(total + ((total-1) * 10))
        let hight : CGFloat = 10.0
        
        let origin = CGPoint(x: (this.bounds.size.width - width)/2, y: this.bounds.size.height - 50 - hight)
        let size   = CGSize(width: width, height: hight)
        
        return UIBezierPath(roundedRect: CGRect(origin: origin, size: size), cornerRadius: size.height/2).cgPath
    }
}
class KnobLayer : CAShapeLayer {
    fileprivate let knowPath = { (this : KnobLayer, index : Int, total : Int) -> CGPath in
        let hight : CGFloat = 10.0
        return UIBezierPath(ovalIn: CGRect(x: 40, y: this.bounds.size.height - 50 - (hight * 1.5), width: 20, height: 20)).cgPath
    }
}
