//
//  FriendsPhotoCollectionViewController.swift
//  App_Ilyushkin_Mikhail
//
//  Created by Michael Iliouchkin on 11.09.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//

import UIKit


class FriendsPhotoCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var friendsPhoto = [UIImage]()
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friendsPhoto.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsCollectionCell", for: indexPath) as! FriendsPhotoCollectionViewCell
        
        cell.photo.image = friendsPhoto[indexPath.row]
        
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
}
