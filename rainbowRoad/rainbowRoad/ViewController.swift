//
//  ViewController.swift
//  rainbowRoad
//
//  Created by J on 7/09/2018.
//  Copyright © 2018 Jman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    let tableData: [String] = ["red", "orange", "yellow", "green", "blue", "indigo", "violet" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = 60
//        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    
    // how many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    // how should i create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.backgroundColor = tableData[indexPath.row]
        return cell
    }

}

