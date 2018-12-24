//
//  BBViewController.swift
//  DemoControl
//
//  Created by MAC193 on 8/3/18.
//  Copyright © 2018 MAC193. All rights reserved.
//

import UIKit

class BBViewController: UIViewController {
    @IBOutlet var array: [BBPageControl]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*self.array[0].setting = BBSetting(normalSize: CGSize(width: 320, height: 30),
                                          normalRadius: 0,
                                          normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          normalColor: #colorLiteral(red: 0.7859908013, green: 0.7993851856, blue: 1, alpha: 1),
                                          animationTime: 0.2,
                                          minimumSpace: 0);*/
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Change number of page
    @IBAction func onTapIncrease(button : UIButton) -> Void{
        array.forEach { (bbPageControl) in
            //bbPageControl.totalPages = bbPageControl.totalPages + 1
        }
    }
    @IBAction func onTapDecrease(button : UIButton) -> Void{
        array.forEach { (bbPageControl) in
            //bbPageControl.totalPages = bbPageControl.totalPages - 1
        }
    }
    // Change current page
    @IBAction func onTapNext(button : UIButton) -> Void{
        array.forEach { (bbPageControl) in
            //bbPageControl.currentPage = bbPageControl.currentPage + 1
        }
    }
    @IBAction func onTapPrev(button : UIButton) -> Void{
        array.forEach { (bbPageControl) in
            //bbPageControl.currentPage = bbPageControl.currentPage - 1
        }
    }
}
