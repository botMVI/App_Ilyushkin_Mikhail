//
//  CityWeatherCollectionViewController.swift
//  App_Ilyushkin_Mikhail
//
//  Created by Michael Iliouchkin on 03.09.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//

import UIKit

private let reuseIdentifier = "WeatherCell"

class CityWeatherCollectionViewController: UICollectionViewController {
    
    var cityWeather = [
        "Group 1",
        "Group 2",
        "Group 3"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print(segue.destination)
    }

    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return cityWeather.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! WeatherCellCollectionViewCell
        
        let weather = cityWeather[indexPath.row]
    
            cell.textLabel.text = "\(weather)"
    
        return cell
    }
}
