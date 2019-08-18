//
//  FlightListTableViewCell.swift
//  FlightLister
//
//  Created by Austin Potts on 8/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class FlightListTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var delayedButton: UIButton!
    
    
    @IBAction func delayedButtonTapped(_ sender: Any) {
        delayedButton.setTitle("Delayed", for: .normal)
    }
    
}
