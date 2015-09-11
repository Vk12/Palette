//
//  ColorsCollectionViewCell.swift
//  Pallette
//
//  Created by Rostin Kohnechi on 9/9/15.
//  Copyright (c) 2015 Vala Kohnechi. All rights reserved.
//

import UIKit

class ColorsCollectionViewCell: UICollectionViewCell {
    
    ///////////////////////////////////////////////////////////
    // MARK: IBOutlets
    @IBOutlet weak var hexColorLabel: UILabel!
    
    
    // Conversion to Hex from UIColor if necessary(Not in use)
    func hexStringFromColor(color:UIColor) -> String {
        
        let components = CGColorGetComponents(color.CGColor)
        
        let r = components[0]
        let g = components[1]
        let b = components[2]
        
        var returnString = "#\(round(r * 255))\(round(g * 255))\(round(b * 255))"
        
        return returnString
    }
    
    
}
