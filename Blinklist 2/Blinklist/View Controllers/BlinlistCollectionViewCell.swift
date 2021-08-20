//
//  BlinlistCollectionViewCell.swift
//  Blinklist
//
//  Created by  Decagon on 27/07/2021.
//

import UIKit

//MARK-CLASS
class BlinlistCollectionViewCell: UICollectionViewCell {
    static var reUseIdentifier = "DetailViewController"
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var bookType: UILabel!
    
    //MARK --Method
    
    func setUp(with person: UserData) {
        bookImage.image = UIImage(named: person.image)
        authorLabel.text = person.title
        titleLbl.text = person.author
        bookType.text = person.book_type        
    }
}
