//
//  FriendsCollectionViewController.swift
//  App_Ilyushkin_Mikhail
//
//  Created by Michael Iliouchkin on 06.09.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//

import UIKit

private let reuseIdentifier = "currentImage"

class FriendsCollectionViewController: UICollectionViewController {
    
    var final_names = String()
    var final_image = String()
    
    
    @IBOutlet weak var selectedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        accessProperties()
    }

    func accessProperties() {
        selectedImage.image = UIImage(named: final_image)
    }

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: .secNum, for: indexPath) as? WeatherCellCollectionViewCell
//        let weather = cityWeather[indexPath.row]
//
//            cell.textLabel.text = "\(weather)"
//
//        return cell
//    }
}
