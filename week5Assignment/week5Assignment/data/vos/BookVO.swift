//
//  BookVO.swift
//  week5Assignment
//
//  Created by Su Win Phyu on 8/30/19.
//  Copyright © 2019 swp. All rights reserved.
//

import Foundation
import UIKit

class BookVO{
  
    var bookimage : UIImage?
    var title : String = ""
    var author : String = ""
    

    init(title: String , author : String , bookimage : UIImage) {
        self.title = title
        self.author = author
        self.bookimage = bookimage
    }
    
    
}

extension BookVO {
    static func getBookItem() -> [BookVO]{
        return[
            .init(title: "Rich Dad Poor Dad", author: "Robert T.Kiyosaki", bookimage: UIImage(imageLiteralResourceName: "book1")),
            .init(title: "The Lean Startup", author: "Eric Ries", bookimage: UIImage(imageLiteralResourceName: "book2")),
            .init(title: "The 4Hour Work Week", author: "Timothy Ferriss", bookimage: UIImage(imageLiteralResourceName: "book3")),
            .init(title: "The subtle art of not giving a F*ck", author: "Mark Manson", bookimage: UIImage(imageLiteralResourceName: "book4")),
            .init(title: "The Modern Alphabet", author: "Charles Duhigg", bookimage: UIImage(imageLiteralResourceName: "book5")),
            .init(title: "Think and Grow Rich", author: "Napoleaon Hill", bookimage: UIImage(imageLiteralResourceName: "book6")),
            .init(title: "The subtle art of not giving a F*ck", author: "Mark Manson", bookimage: UIImage(imageLiteralResourceName: "book4")),
            .init(title: "The Modern Alphabet", author: "Charles Duhigg", bookimage: UIImage(imageLiteralResourceName: "book5")),
            .init(title: "Think and Grow Rich", author: "Napoleaon Hill", bookimage: UIImage(imageLiteralResourceName: "book6"))
        ]
    }
}



