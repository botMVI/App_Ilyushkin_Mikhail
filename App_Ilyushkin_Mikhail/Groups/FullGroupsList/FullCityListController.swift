//
//  FullCityListController.swift
//  App_Ilyushkin_Mikhail
//
//  Created by Michael Iliouchkin on 28.08.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//

import UIKit

protocol FullCityHandler: class {
    func cityChosen(cityName: String)
}

class FullCityListController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    weak var cityHandler: FullCityHandler? = nil
    
    var cities = [
        "Moscow",
        "LA",
        "SF",
        "Paris",
        "London",
        "Omsk",
        "EKB"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension FullCityListController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell") {
            
            let city = cities[indexPath.row]
            cell.textLabel?.text = city
            
            return cell
        }
        fatalError()
    }
}

extension FullCityListController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let city = cities[indexPath.row]
        
        cityHandler?.cityChosen(cityName: city)
        navigationController?.popViewController(animated: true)
    }
}

