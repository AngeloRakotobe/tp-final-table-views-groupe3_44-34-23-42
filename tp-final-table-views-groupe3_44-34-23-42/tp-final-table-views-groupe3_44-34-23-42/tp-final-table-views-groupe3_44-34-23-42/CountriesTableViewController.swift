//
//  CountriesTableViewController.swift
//  tp-final-table-views-groupe3_44-34-23-42
//
//  Created by Angelo Rakotobe on 08/07/2024.
//

import UIKit

class CountriesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "BasicCell")
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "RightDetailCell")
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "LeftDetailCell")
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "SubtitleCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let country = countries[indexPath.row]
        var cell: UITableViewCell

        switch indexPath.section {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
            cell.textLabel?.text = country.name
        case 1:
            cell = tableView.dequeueReusableCell(withIdentifier: "RightDetailCell", for: indexPath)
            cell.textLabel?.text = country.name
            cell.detailTextLabel?.text = country.isoCode
        case 2:
            cell = tableView.dequeueReusableCell(withIdentifier: "LeftDetailCell", for: indexPath)
            cell.textLabel?.text = country.isoCode
            cell.detailTextLabel?.text = country.name
        case 3:
            cell = tableView.dequeueReusableCell(withIdentifier: "SubtitleCell", for: indexPath)
            cell.textLabel?.text = country.name
            cell.detailTextLabel?.text = country.isoCode
            cell.imageView?.image = UIImage(named: country.isoCode)
        default:
            fatalError("Section inconnue")
        }

        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Basic"
        case 1:
            return "Right Detail"
        case 2:
            return "Left Detail"
        case 3:
            return "Subtitle"
        default:
            return nil
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
