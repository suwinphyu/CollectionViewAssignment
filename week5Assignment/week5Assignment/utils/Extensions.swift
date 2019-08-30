//
//  Extensions.swift
//  week5Assignment
//
//  Created by Su Win Phyu on 8/28/19.
//  Copyright © 2019 swp. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    func registerForItem(strID : String){
        
        register(UINib(nibName: strID, bundle: nil), forCellWithReuseIdentifier: strID )
    }
}
