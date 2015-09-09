//
//  DisplayColorsViewController.swift
//  Palett
//
//  Created by Vala Kohnechi on 9/9/15.
//  Copyright (c) 2015 Vala Kohnechi. All rights reserved.
//

import UIKit

class DisplayColorsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let colorsArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // CollectionView Delegates
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! ColorsCollectionViewCell
        cell.backgroundColor = UIColor.greenColor()
        return cell
    }
    
}
