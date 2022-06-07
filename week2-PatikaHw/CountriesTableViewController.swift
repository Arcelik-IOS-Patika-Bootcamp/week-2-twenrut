//
//  CountriesTableViewController.swift
//  week2-PatikaHw
//
//  Created by Kaan Alkan on 7.06.2022.
//

import UIKit

class CountriesTableViewController: UITableViewController {
    
    var countries = [
    Country(isoCode: "usa", name: "United States"),
    Country(isoCode: "nl", name: "Netherlands"),
    Country(isoCode: "tr", name: "Türkiye")
]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 2 {
            performSegue(withIdentifier: "go", sender: nil)
        } else { self.countries.append(Country(isoCode: "", name: "Click Türkiye bruh"))
            self.loadView()
        }
            
        }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)

        let country = countries[indexPath.row]
     cell.textLabel?.text = country.name
     cell.imageView?.image = UIImage(named: country.isoCode)
             return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pick one country to born!"
    }
    
    struct Country {
        var isoCode: String
        var name: String
    }
    
}
