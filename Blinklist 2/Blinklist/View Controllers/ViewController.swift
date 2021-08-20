//
//  ViewController.swift
//  Blinklist
//
//  Created by  Decagon on 26/07/2021.
//

import UIKit
//MARK-- CLASS
class HomeViewController: UIViewController {              //ABSTRACTION
    var result : [UserData] = []     //MARK! Result variable
    @IBOutlet weak var collectionView: UICollectionView!
    let dataloader = DataLoader()
    
    // MARK: - METHOD
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        result = dataloader.userData
//        result = dataloader.userData
//                dataloader.load { [weak self] data in
//                    self?.result = data
//                }
                dataloader.dataDelegate = self
                dataloader.load()
                collectionView.dataSource = self
                collectionView.delegate = self
                collectionView.collectionViewLayout = UICollectionViewFlowLayout()
            }
        }
        //MARK-- Extention of the ViewController class to be use the dataSource
        //MARK-- INHERITANCE
        extension HomeViewController: UICollectionViewDataSource {
            //MARK-- METHOD
            func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                return result.count
            }
            //MARK-- METHOD
            func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                //MARK-- Attributes
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BlinlistCollectionCell", for: indexPath) as! BlinlistCollectionViewCell
        cell.setUp(with: result[indexPath.row])
        return cell
    }
    //MARK-- METHOD
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: BlinlistCollectionViewCell.reUseIdentifier) as? DetailViewController else {
            return
        }
        //MARK-- Attributes
        vc.imag = UIImage(named: result[indexPath.row].image)!
        vc.authorName  = result[indexPath.row].title
        vc.titleName = result[indexPath.row].author
        vc.bookLbl = result[indexPath.row].book_type
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

//MARK: Extension of the viewcontroller to determine the flow layout
//INHERITANCE



extension HomeViewController: LoadUser {
    func fetchUser(user: [UserData]) {
        self.result = user
    }
}
//
//
//}
