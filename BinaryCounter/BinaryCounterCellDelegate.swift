//
//  BinaryCounterCellDelegate.swift
//  BinaryCounter
//
//  Created by Jonathan Salin Lee on 3/22/17.
//  Copyright © 2017 Jonathan Salin Lee. All rights reserved.
//

import Foundation

protocol BinaryCounterCellDelegate: class {
    func addButtonPressed(increment: Int)
    func minusButtonPressed(decrement: Int)
}
