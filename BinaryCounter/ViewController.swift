//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Jonathan Salin Lee on 3/22/17.
//  Copyright © 2017 Jonathan Salin Lee. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController, UITableViewDelegate, BinaryCounterCellDelegate {
    
    @IBOutlet weak var BinaryCounterTableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    var total: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BinaryCounterTableView.delegate = self
        BinaryCounterTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addButtonPressed(increment: Int) {
        total += increment
        totalLabel.text = String(total)
    }
    func minusButtonPressed(decrement: Int) {
        total -= decrement
        totalLabel.text = String(total)
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCounterCell", for: indexPath) as! BinaryCounterCustomCell
        cell.numberLabel.text = String(describing: pow(10.0, indexPath.row))
        cell.delegate = self
        return cell
    }
}
