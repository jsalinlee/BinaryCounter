//
//  BinaryCounterCustomCell.swift
//  BinaryCounter
//
//  Created by Jonathan Salin Lee on 3/22/17.
//  Copyright © 2017 Jonathan Salin Lee. All rights reserved.
//

import UIKit

class BinaryCounterCustomCell: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    weak var delegate: BinaryCounterCellDelegate?
    
    @IBAction func plusButtonPressed(_ sender: Any) {
        delegate?.addButtonPressed(increment: Int(numberLabel.text!)!)
    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        delegate?.minusButtonPressed(decrement: Int(numberLabel.text!)!)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
