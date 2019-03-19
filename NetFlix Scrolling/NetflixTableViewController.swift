//
//  ViewController.swift
//  NetFlix Scrolling
//
//  Created by Erick Alcantara on 3/19/19.
//  Copyright © 2019 Erick Alcantara. All rights reserved.
//

import UIKit

class NetflixTableViewController: UITableViewController {
    
    var categories = ["Horror", "Comedy", "Romance", "Action", "Foreign", "Sci-Fi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CategoryRow
        return cell
    }
}

