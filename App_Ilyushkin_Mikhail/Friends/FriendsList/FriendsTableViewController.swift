//
//  FriendsTableViewController.swift
//  App_Ilyushkin_Mikhail
//
//  Created by Michael Iliouchkin on 06.09.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    @IBOutlet weak var friendTableView: UITableView!
    
    var friends = [
        "Жора",
        "Андрей",
        "Галя",
        "Беня",
        "Вова",
        "Егор",
        "Данил"
    ]
    
    var images = [
        "image1",
        "image2",
        "image3",
        "image4",
        "image5",
        "image1",
        "image2"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return friends.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            if let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell") {
                let friend = friends[indexPath.row]
                cell.textLabel?.text = friend
                cell.imageView?.image = UIImage(named: images[indexPath.row])
            
                return cell
            }
            fatalError()
        }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "currentFriend", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = self.tableView.indexPathForSelectedRow
        let indexNumber = index?.row
        let vc = segue.destination as! FriendsCollectionViewController
        vc.final_names = friends[indexNumber!]
        vc.final_image = friends[indexNumber!]
    }
}
