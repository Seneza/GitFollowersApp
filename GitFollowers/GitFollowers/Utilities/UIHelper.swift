//
//  UIHelper.swift
//  GitFollowers
//
//  Created by Gaston on 9/6/24.
//

import UIKit

struct UIHelper {
    
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        
        // Calculate total available width by subtracting the padding on both sides and inter-item spacing
        let totalPadding = padding * 2
        let totalSpacing = minimumItemSpacing * 2 // We have 3 items so 2 spaces in between
        
        let availableWidth = width - totalPadding - totalSpacing
        
        // Calculate item width based on the available width
        let itemWidth = availableWidth / 3
        
        // Configure the flow layout
        let flowLayout = UICollectionViewFlowLayout()
        
        // Ensure equal padding on the left and right sides
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.minimumInteritemSpacing = minimumItemSpacing
        flowLayout.minimumLineSpacing = 16
        
        // Set the item size (with label height included)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
}
