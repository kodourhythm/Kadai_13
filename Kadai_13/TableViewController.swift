//
//  TableViewController.swift
//  Kadai_13
//
//  Created by kodou on 2020/10/16.
//

import UIKit

class TableViewController: UITableViewController {

    let KeyName = "Name"
    let KeyCheck = "Check"
    
    var items:[Dictionary<String,Any>] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.items = [
            [KeyName:"りんご",KeyCheck:false],
            [KeyName:"みかん",KeyCheck:true],
            [KeyName:"バナナ",KeyCheck:false],
            [KeyName:"パイナップル",KeyCheck:true],

        ]
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! TableViewCell

        // Configure the cell...
        let item = self.items[indexPath.row]
        cell.checkImage.image = nil
        if item[KeyCheck] as? Bool == true {
            cell.checkImage.image = UIImage(named: "Check")
        }
        
        cell.nameLabel.text = item[KeyName] as? String ?? ""

        return cell
    }

}
