//
//  SegmentedControl.swift
//  Pallette
//
//  Created by Vala Kohnechi on 9/11/15.
//  Copyright (c) 2015 Vala Kohnechi. All rights reserved.
//

import UIKit

class SegmentedControl: NYSegmentedControl {
    
    ///////////////////////////////////////////////////////////
    // MARK: Initalizers
    
    required init() {
        super.init(frame: CGRectZero)
    }
    
    init(items: [AnyObject], container: UIView) {
        
        super.init(items:items)
        
        container.layoutIfNeeded()
        self.frame = CGRectMake(0, 0, container.frame.width, container.frame.height)
        
        // Options for Segmented Controller
        titleTextColor = UIColor.blackColor()

        selectedTitleTextColor = UIColor.whiteColor()
        
        segmentIndicatorBackgroundColor = UIColor.blackColor()
        
        backgroundColor = UIColor.whiteColor()
        
        segmentIndicatorInset = 1.0
        
        segmentIndicatorBorderColor = UIColor.whiteColor()
        
        cornerRadius = frame.height / 2.0
        
        usesSpringAnimations = true
        
        // Add to container view
        container.addSubview(self)
    }
    
    override init(frame:CGRect) {
        super.init(frame:frame)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
