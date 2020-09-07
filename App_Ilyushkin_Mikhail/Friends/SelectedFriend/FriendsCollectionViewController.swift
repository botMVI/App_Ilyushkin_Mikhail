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
    
    @IBOutlet weak var selectImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        accessProperties()
    }

    func accessProperties() {
        selectImage.image = UIImage(named: final_image)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }
}
