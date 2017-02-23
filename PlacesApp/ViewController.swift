//
//  ViewController.swift
//  PlacesApp
//
//  Created by Colben Matthew Kharrl on 2/20/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //  table view connection
    @IBOutlet weak var placeTable: UITableView!
    //  Places MODEL
    var placeModel: PlaceList = PlaceList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //  number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeModel.places.count
    }
    //  cell format
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        cell.textLabel?.text = placeModel.places[indexPath.row].getName();
        
        return cell;
    }
    
    //  swipe to DELETE
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            placeModel.places.remove(at: indexPath.row)
            placeTable.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    //  segue to detail
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "details"{
            let selectedIndex: IndexPath = self.placeTable.indexPath(for: sender as! UITableViewCell)!
            if let detailviewController: DetailViewController = segue.destination as? DetailViewController {
                detailviewController.placeModel = placeModel.places[selectedIndex.row];
            }
        }
    }
    
    @IBAction func returnedToTable(segue: UIStoryboardSegue)
    {
        let src = segue.source as! AddEntryViewController
        if src.name != "" {
            placeModel.places.append(Place(n: src.name, i: "default.jpg", d: src.desc))
            placeTable.beginUpdates()
            placeTable.insertRows(at: [IndexPath(row: placeModel.places.count-1, section: 0)], with: .automatic)
            placeTable.endUpdates()
        }
    }
}

