//
//  ViewController.swift
//  Gallery
//
//  Created by Konstantin Zaimov on 11/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    var images = ImageDescriptor.parseFromJSON()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        super.prepare(for: segue, sender: sender)
//        if segue.identifier == "" {
//            if let next = segue.destination as? DetailsViewController {
//                
//            }
//        }
//    }

}

extension ViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath)
        if let myCell = cell as? ImageCollectionViewCell {
            let descriptor = images[indexPath.row]
            let image:UIImage = UIImage.init(imageLiteralResourceName: descriptor.image)
            myCell.image.image = image
        }
        return cell
    }
    
    
}

//extension ViewController : UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let descriptor = images[indexPath.row]
//        
//    }
//}
//extension ViewController {
//    func openDetails() {
//        
//    }
//}

class DetailsViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
