//
//  ViewController.swift
//  TableView
//
//  Created by Enola Zhu on 2022/1/24.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.rowHeight = 100
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath)
        let text = "This is section \(indexPath.section), row \(indexPath.row)"
        cell.textLabel?.text = text
        return cell
    }
}

