//
//  ViewController.swift
//  FavoriteThings
//
//  Created by Mitchell Socia on 8/27/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import UIKit

class ThingsViewController: UITableViewController {

    var listFavoriteThings = ["Pizza", "Sunshine", "Steely Dan", "TV!", "INFORMATION"]
    // ^ an array called down farther
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
}
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "listFavoriteThings", for: indexPath)
    
    cell.textLabel?.text = listFavoriteThings[indexPath.row]
    // the array from above called here
    
    return cell
}

override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    if let cell = tableView.cellForRow(at: indexPath) {
        if cell.accessoryType == .none {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
            
        }
    }
    
    tableView.deselectRow(at: indexPath, animated: true)
}
}



