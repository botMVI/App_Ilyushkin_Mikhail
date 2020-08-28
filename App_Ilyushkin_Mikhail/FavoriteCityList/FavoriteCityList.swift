//
//  FavoriteCityList.swift
//  App_Ilyushkin_Mikhail
//
//  Created by Michael Iliouchkin on 28.08.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//

import UIKit

class FavoriteCityList: UITableViewController {

    
    
//    // MARK: - Table view data source
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//        // Configure the cell...
//
//        return cell
//    }
    
    @IBAction func addCity(sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let fullCityListVC = storyboard.instantiateViewController(identifier: "FullCityListControllerID")
        navigationController?.pushViewController(fullCityListVC, animated: true)
    }

}
