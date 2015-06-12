//
//  ViewController.swift
//  MosaicLayout
//
//  Created by pandazheng on 15/6/11.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit
import FMMosaicLayout

class ViewController: UICollectionViewController , UICollectionViewDataSource , UICollectionViewDelegate , FMMosaicLayoutDelegate{
    
    var imageArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var mosaicLayout : FMMosaicLayout = FMMosaicLayout.alloc()
        self.collectionView?.collectionViewLayout = mosaicLayout
        
        //这个数据可以从网络直接获取
        imageArray = ["ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11",
            "ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11","ym1","ym2","ym3","ym4","ym5","ym6","ym7","ym8","ym9","ym10","ym11"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView : UICollectionView!, layout collectionViewLayout : FMMosaicLayout!,numberOfColumnsInSection section: Int) -> Int
    {
        return 2
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! UICollectionViewCell
        
        var randomBlue = CGFloat(drand48())
        var randomGreen = CGFloat(drand48())
        var randomRed = CGFloat(drand48())
        
        cell.backgroundColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
        cell.alpha = 0
        
        var imageView = cell.viewWithTag(1) as! UIImageView
        
        imageView.image = UIImage(named: imageArray[indexPath.row])
        
        var millisecondsDelay = UInt64((arc4random() % 600) / 1000)
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW,Int64(millisecondsDelay * NSEC_PER_SEC)), dispatch_get_main_queue(), { () -> Void in
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                cell.alpha = 1.0
                
            })
        })
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(collectionView: UICollectionView!, layout collectionViewLayout: FMMosaicLayout!, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 2.0, left: 2.0, bottom: 2.0, right: 2.0)
    }
    
    func collectionView(collectionView: UICollectionView!, layout collectionViewLayout: FMMosaicLayout!, interitemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 2.0
    }
    
    func collectionView(collectionView: UICollectionView!, layout collectionViewLayout: FMMosaicLayout!, mosaicCellSizeForItemAtIndexPath indexPath: NSIndexPath!) -> FMMosaicCellSize {
        return indexPath.item % 2 == 0 ? FMMosaicCellSize.Big : FMMosaicCellSize.Small
    }

}

