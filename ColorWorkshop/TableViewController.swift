//
//  TableViewController.swift
//  ColorWorkshop
//
//  Created by Anirudha SM on 25/10/21.
//

import UIKit

class TableViewController: UITableViewController {

    var colorArray: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Color Selection"
        
        for _ in 0..<50{
            colorArray.append(randomColor())
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colorArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.backgroundColor = colorArray[indexPath.row]
    
        return cell
    }
    
    func randomColor() -> UIColor{
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0
        )
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
   
}
