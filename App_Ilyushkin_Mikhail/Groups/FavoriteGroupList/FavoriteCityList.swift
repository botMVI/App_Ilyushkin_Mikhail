//
//  FavoriteCityList.swift
//  App_Ilyushkin_Mikhail
//
//  Created by Michael Iliouchkin on 28.08.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//

import UIKit

class FavoriteCityList: UITableViewController {

    var favoriteCityList: [String] = []
    
    
//    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteCityList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCityCell", for: indexPath)
        let city = favoriteCityList[indexPath.row]
        cell.textLabel?.text = city

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            favoriteCityList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        default:
            break
        }
    }
    
    @IBAction func addCity(sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let fullCityListVC = storyboard.instantiateViewController(identifier: "FullCityListControllerID") as! FullCityListController
        
        fullCityListVC.cityHandler = self
        
        navigationController?.pushViewController(fullCityListVC, animated: true)
    }
}

extension FavoriteCityList: FullCityHandler {
    func cityChosen(cityName: String) {
        favoriteCityList.append(cityName)
        tableView.reloadData()
    }
}

