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
    var colorsArray = [UIColor]()
    
    var colorsHexValue:[String] = [String]()
    
    // Image where colors are being extracted
    var image = UIImage()
    
    ///////////////////////////////////////////////////////////
    // MARK: ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    
        convertFromUIColorToHex()
    }
    
    
    ///////////////////////////////////////////////////////////
    // MARK: CollectionView Delegates
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colorsArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! ColorsCollectionViewCell
        cell.backgroundColor = colorsArray[indexPath.row] as UIColor
        cell.hexColorLabel.text = colorsHexValue[indexPath.row]
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSizeMake(self.view.frame.size.width / 4 - 2, self.view.frame.size.width / 4 - 2)
    }
    
    ///////////////////////////////////////////////////////////
    // MARK: Helper Methods
    
    // Conversion to Hex from UIColor
    func hexStringFromColor(color:UIColor) -> String {
        
        let components = CGColorGetComponents(color.CGColor)
        
        let r = Int(components[0] * 255)
        let g = Int(components[1] * 255)
        let b = Int(components[2] * 255)
        
        var returnString = NSString(format: "#%02lX%02lX%02lX", r,g,b)
        
        return returnString as String
    }
    
    // Enumerates through colors received to add to colorsHexValue Array
    func convertFromUIColorToHex() {
        
        for color:UIColor in colorsArray {
            let colorHexString = hexStringFromColor(color)
            colorsHexValue.append(colorHexString)
        }
        
    }
    
    // Dismisses VC when X pressed
    @IBAction func dismissDisplayColorsViewControllerOnTap(sender: AnyObject) {
        
         dismissViewControllerAnimated(true, completion: nil)
    }
    
}
