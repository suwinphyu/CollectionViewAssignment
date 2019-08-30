//
//  BookStoreViewController.swift
//  week5Assignment
//
//  Created by Su Win Phyu on 8/29/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit

class BookStoreViewController: UIViewController {
    static let identifier = "BookStoreViewController"
    var bookData : [BookVO] = BookVO.getBookItem()
    
    @IBOutlet weak var collectionViewBookStore: UICollectionView!
    
    
    //To calculate flowlayout    
    let numberOfItemsPerRow : CGFloat = 3.0
    let spacing : CGFloat = 8
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionViewBookStore.delegate = self
        collectionViewBookStore.dataSource = self
        collectionViewBookStore.registerForItem(strID: String(describing:BookStoreCollectionViewCell.self ))
    
        //Flowlayout
        let totalPadding : CGFloat = numberOfItemsPerRow * spacing
        let itemWidth = (self.view.frame.width - totalPadding) / numberOfItemsPerRow
        let layout = collectionViewBookStore.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 2
        
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth * 2)
        
    }
    

}

extension BookStoreViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: BookStoreCollectionViewCell.self), for: indexPath) as! BookStoreCollectionViewCell
        item.bookData = bookData[indexPath.row]
        return item
    }
}

extension BookStoreViewController : UICollectionViewDelegate{}
