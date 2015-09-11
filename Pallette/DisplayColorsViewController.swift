//
//  DisplayColorsViewController.swift
//  Palett
//
//  Created by Vala Kohnechi on 9/9/15.
//  Copyright (c) 2015 Vala Kohnechi. All rights reserved.
//

import UIKit


class DisplayColorsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    ///////////////////////////////////////////////////////////
    // MARK: IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    
    
    ///////////////////////////////////////////////////////////
    // MARK: Properties
    
    // Array of Colors from Image
    var colorsArray = []
    
    // Image where colors are being extracted
    var image = UIImage()
    
    ///////////////////////////////////////////////////////////
    // MARK: ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
        
    }
    ///////////////////////////////////////////////////////////
    // MARK: CollectionView Delegates
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colorsArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! ColorsCollectionViewCell
        cell.backgroundColor = colorsArray[indexPath.row] as? UIColor
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSizeMake(self.view.frame.size.width / 4 - 2, self.view.frame.size.width / 4 - 2)
    }
    
}
