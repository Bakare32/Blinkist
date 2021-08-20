//
//  DetailViewController.swift
//  Blinklist
//
//  Created by  Decagon on 27/07/2021.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bookLabel: UILabel!
    //MARK --Atributes
    var imag = UIImage()
    var authorName = ""
    var titleName = ""
    var bookLbl = ""
    //MARK --Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = authorName
        img.image = imag
        titleLabel.text = titleName
        bookLabel.text = bookLbl
    }
}
