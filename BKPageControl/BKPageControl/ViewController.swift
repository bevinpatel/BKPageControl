//
//  ViewController.swift
//  DemoControl
//
//  Created by MAC193 on 8/3/18.
//  Copyright © 2018 MAC193. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var array: [BKPageControl]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.array[0].setting = UISetting(selectedSize: CGSize(width: 10, height: 10),
                                          selectedRadius: 0,
                                          selectedOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          selectedColor: #colorLiteral(red: 0.4156862745, green: 0.3725490196, blue: 0.9725490196, alpha: 1),
                                          normalSize: CGSize(width: 10, height: 10),
                                          normalRadius: 0,
                                          normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          normalColor: #colorLiteral(red: 0.7859908013, green: 0.7993851856, blue: 1, alpha: 1),
                                          animationTime: 0.2,
                                          minimumSpace: 0);
        self.array[1].setting = UISetting(selectedSize: CGSize(width: 20, height: 20),
                                          selectedRadius: 0,
                                          selectedOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          selectedColor: #colorLiteral(red: 0.4156862745, green: 0.3725490196, blue: 0.9725490196, alpha: 1),
                                          normalSize: CGSize(width: 10, height: 10),
                                          normalRadius: 0,
                                          normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          normalColor: #colorLiteral(red: 0.7859908013, green: 0.7993851856, blue: 1, alpha: 1),
                                          animationTime: 0.2,
                                          minimumSpace: 10);
        self.array[2].setting = UISetting(selectedSize: CGSize(width: 20, height: 20),
                                          selectedRadius: 0,
                                          selectedOffSet: UIOffset(horizontal: 0, vertical: -7),
                                          selectedColor: #colorLiteral(red: 0.4156862745, green: 0.3725490196, blue: 0.9725490196, alpha: 1),
                                          normalSize: CGSize(width: 6, height: 6),
                                          normalRadius: 0,
                                          normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          normalColor: #colorLiteral(red: 0.7859908013, green: 0.7993851856, blue: 1, alpha: 1),
                                          animationTime: 0.2,
                                          minimumSpace: 10);
        self.array[3].setting = UISetting(selectedSize: CGSize(width: 10, height: 10),
                                          selectedRadius: 5,
                                          selectedOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          selectedColor: #colorLiteral(red: 0.4156862745, green: 0.3725490196, blue: 0.9725490196, alpha: 1),
                                          normalSize: CGSize(width: 10, height: 10),
                                          normalRadius: 0.01,
                                          normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          normalColor: #colorLiteral(red: 0.7859908013, green: 0.7993851856, blue: 1, alpha: 1),
                                          animationTime: 0.2,
                                          minimumSpace: 5);
        self.array[4].setting = UISetting(selectedSize: CGSize(width: 20, height: 10),
                                          selectedRadius: 5,
                                          selectedOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          selectedColor: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),
                                          normalSize: CGSize(width: 10, height: 10),
                                          normalRadius: 5,
                                          normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          normalColor: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1),
                                          animationTime: 0.2,
                                          minimumSpace: 5);
        self.array[5].setting = UISetting(selectedSize: CGSize(width: 10, height: 10),
                                          selectedRadius: 5,
                                          selectedOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          selectedColor: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),
                                          normalSize: CGSize(width: 20, height: 10),
                                          normalRadius: 5,
                                          normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          normalColor: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1),
                                          animationTime: 0.2,
                                          minimumSpace: 5);
        self.array[6].setting = UISetting(selectedSize: CGSize(width: 20, height: 20),
                                          selectedRadius: 10,
                                          selectedOffSet: UIOffset(horizontal: 0, vertical: -5),
                                          selectedColor: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),
                                          normalSize: CGSize(width: 4, height: 4),
                                          normalRadius: 2,
                                          normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          normalColor: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),
                                          animationTime: 0.2,
                                          minimumSpace: 5);
        self.array[7].setting = UISetting(selectedSize: CGSize(width: 4, height: 4),
                                          selectedRadius: 2,
                                          selectedOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          selectedColor: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),
                                          normalSize: CGSize(width: 20, height: 20),
                                          normalRadius: 10,
                                          normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          normalColor: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),
                                          animationTime: 0.2,
                                          minimumSpace: 5);
        self.array[8].setting = UISetting(selectedSize: CGSize(width: 10, height: 30),
                                          selectedRadius: 0,
                                          selectedOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          selectedColor: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),
                                          normalSize: CGSize(width: 10, height: 10),
                                          normalRadius: 0,
                                          normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          normalColor: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1),
                                          animationTime: 0.2,
                                          minimumSpace: 5);
        self.array[9].setting = UISetting(selectedSize: CGSize(width: 10, height: 30),
                                          selectedRadius: 5,
                                          selectedOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          selectedColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1),
                                          normalSize: CGSize(width: 10, height: 10),
                                          normalRadius: 5,
                                          normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                          normalColor: #colorLiteral(red: 0.9213333609, green: 0.5992423551, blue: 0.5664755677, alpha: 1),
                                          animationTime: 0.2,
                                          minimumSpace: 5);
        self.array[10].setting = UISetting(selectedSize: CGSize(width: 10, height: 30),
                                           selectedRadius: 5,
                                           selectedOffSet: UIOffset(horizontal: 0, vertical: 0),
                                           selectedColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1),
                                           normalSize: CGSize(width: 10, height: 10),
                                           normalRadius: 0.01,
                                           normalOffSet: UIOffset(horizontal: 0, vertical: 0),
                                           normalColor: #colorLiteral(red: 0.9213333609, green: 0.5992423551, blue: 0.5664755677, alpha: 1),
                                           animationTime: 0.2,
                                           minimumSpace: 5);
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onChangeNumberOFPage(id : UIStepper) -> Void{
        array.forEach { (bkPageControl) in
            bkPageControl.numberOfPages = Int(id.value)
        }
    }
    @IBAction func onChangeCurrentPage(id : UIStepper) -> Void{
        array.forEach { (bkPageControl) in
            bkPageControl.currentPage = Int(id.value)
        }
    }
}
