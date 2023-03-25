//
//  ViewController.swift
//  StarApp
//
//  Created by ELANUR KIZILAY on 20.03.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var myTableView: UITableView!
    
    var users = [User]()
    var user = User()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        myTableView.delegate = self
        myTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let row = users[indexPath.row]
        cell.textLabel?.text = row.firstName + " " + row.lastName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = users[indexPath.row]
             user = row
             self.performSegue(withIdentifier: "toDetail", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "toDetail" {
             let desVC = segue.destination as! DetailViewController
             desVC.userDetail = self.user
         }
    }

    func loadData () {
        let user1 = User()
        user1.firstName = "Kıvanç"
        user1.lastName = "Tatlıtuğ"
        user1.picture = UIImage(named: "kivanc")!
        users.append(user1)
        
        let user2 = User()
        user2.firstName = "Serenay"
        user2.lastName = "Sarıkaya"
        user2.picture = UIImage(named: "serenay")!
        users.append(user2)
        
        let user3 = User()
        user3.firstName = "Ramazan Mert"
        user3.lastName = "Demir"
        user3.picture = UIImage(named: "ramazan")!
        users.append(user3)
        
        let user4 = User()
        user4.firstName = "Afra"
        user4.lastName = "Saraçoğlu"
        user4.picture = UIImage(named: "afra")!
        users.append(user4)
        
        let user5 = User()
        user5.firstName = "Engin"
        user5.lastName = "Akyürek"
        user5.picture = UIImage(named: "engin")!
        users.append(user5)
    }
    
    
    
    
    
}

