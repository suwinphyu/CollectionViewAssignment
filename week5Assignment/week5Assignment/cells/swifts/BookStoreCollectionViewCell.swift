//
//  BookStoreCollectionViewCell.swift
//  week5Assignment
//
//  Created by Su Win Phyu on 8/29/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit

class BookStoreCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageViewBook: UIImageView!
    
    @IBOutlet weak var labelBookTitle: UILabel!
    
    @IBOutlet weak var labelAuthor: UILabel!
    

    var bookData : BookVO!{
        didSet{
            labelBookTitle.text = bookData.title
            labelAuthor.text = bookData.author
            imageViewBook.image = bookData.bookimage
            imageViewBook.layer.cornerRadius = 10
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
