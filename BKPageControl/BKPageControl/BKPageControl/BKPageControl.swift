//
//  BKPageControl.swift
//  Tasker
//
//  Created by MAC193 on 8/3/18.
//  Copyright © 2018 MAC240. All rights reserved.
//

import UIKit

struct BKSetting{
    var selectedSize    : CGSize         = CGSize(width: 20, height: 10);
    var selectedRadius  : CGFloat        = 5;
    var selectedOffSet  : UIOffset       = UIOffset(horizontal: 0, vertical: 0);
    var selectedColor   : CGColor        = #colorLiteral(red: 0.4156862745, green: 0.3725490196, blue: 0.9725490196, alpha: 1)
    
    
    var normalSize      : CGSize         = CGSize(width: 10, height: 10);
    var normalRadius    : CGFloat        = 5;
    var normalOffSet    : UIOffset       = UIOffset(horizontal: 0, vertical: 0);
    var normalColor     : CGColor        = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    
    var animationTime   : CFTimeInterval = 0.1;
    var minimumSpace    : CGFloat        = 5.0;
}

class BKPageControl: UIControl {
    var setting = BKSetting();
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
            self.layers.removeAll();
            self.layer.sublayers?.removeAll();
            for _ in 0 ..< internalTotalPages{
                let layer = BKPLayer()
                self.layers.append(layer);
                self.layer.addSublayer(layer);
            }
            self.setNeedsDisplay();
        }
    }
    private var layers  = [BKPLayer]();
    override func draw(_ rect: CGRect) {
        let maximumGaps = CGFloat(self.internalTotalPages-1);
        let totalWidth  = (maximumGaps * setting.minimumSpace) + (maximumGaps * setting.normalSize.width) + setting.selectedSize.width;
        var xPos = (rect.width - totalWidth) / 2
        
        self.layers.forEach { (layer) in
            if self.layers.index(of: layer) == self.internalCurrentPage {
                let path = self.longRingPath(point: CGPoint(x: xPos+setting.selectedOffSet.horizontal, y: ((rect.size.height-setting.selectedSize.height)/2) + setting.selectedOffSet.vertical))
                layer.changePath(path : path,isSelected : true, setting    : setting);
                xPos    += setting.selectedSize.width + setting.minimumSpace;
            }
            else{
                let path = self.ringPath(point: CGPoint(x: xPos+setting.normalOffSet.horizontal, y: ((rect.size.height-setting.normalSize.height)/2) + setting.normalOffSet.vertical))
                layer.changePath(path: path, isSelected: false, setting : setting)
                xPos    += setting.normalSize.width + setting.minimumSpace;
            }
        }
    }
    private func ringPath(point : CGPoint) -> UIBezierPath {
        let bezierPath  = UIBezierPath(roundedRect: CGRect(origin: point, size: setting.normalSize),
                                       cornerRadius: setting.normalRadius)
        return bezierPath
    }
    private func longRingPath(point : CGPoint) -> UIBezierPath{
        let bezierPath  = UIBezierPath(roundedRect: CGRect(origin: point, size: setting.selectedSize),
                                       cornerRadius: setting.selectedRadius)
        return bezierPath
    }
}
class BKPLayer : CAShapeLayer{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(layer: Any) {
        super.init(layer: layer)
    }
    override init() {
        super.init();
        self.lineCap        = kCALineCapRound
    }
    fileprivate func changePath(path : UIBezierPath,isSelected : Bool,setting : BKSetting){
        if let oldPath  = self.path{
            let animationPath       = CABasicAnimation(keyPath: "path");
            animationPath.duration  = setting.animationTime
            animationPath.fromValue = oldPath;
            animationPath.toValue   = path.cgPath;
            self.path               = path.cgPath;
            self.add(animationPath, forKey: "path")
            
            let animationColor       = CABasicAnimation(keyPath: "fillColor");
            animationColor.duration  = setting.animationTime
            animationColor.fromValue = self.fillColor;
            animationColor.toValue   = isSelected ? setting.selectedColor : setting.normalColor;
            self.fillColor           = isSelected ? setting.selectedColor : setting.normalColor;
            self.add(animationColor, forKey: "fillColor")
        }
        else{
            self.path       = path.cgPath;
            self.fillColor  = isSelected ? setting.selectedColor : setting.normalColor;
        }
    }
}
