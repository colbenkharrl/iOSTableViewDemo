//
//  DetailViewController.swift
//  PlacesApp
//
//  Created by Colben Matthew Kharrl on 2/20/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    //  main view controller object
    var vc: ViewController = ViewController()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionText: UITextView!
    
    //  setting search string for getting data
    var placeModel: Place = Place(n: "", i: "", d: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //  set UI
        nameLabel.text = placeModel.getName()
        descriptionText.text = placeModel.getDescription()
        image.image = UIImage(named: placeModel.getImage())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
