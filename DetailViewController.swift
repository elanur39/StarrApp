//
//  DetailViewController.swift
//  StarApp
//
//  Created by ELANUR KIZILAY on 20.03.2023.
//

import UIKit

class DetailViewController: UIViewController {
    var userDetail = User()
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = userDetail.firstName + " " + userDetail.lastName
        myImageView.image = userDetail.picture
       
    }
    



}
