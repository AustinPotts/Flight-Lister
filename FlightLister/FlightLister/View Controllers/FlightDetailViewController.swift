//
//  FlightDetailViewController.swift
//  FlightLister
//
//  Created by Austin Potts on 8/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class FlightDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyTextView: UITextView!
    
    var flight: Flight?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }
    

    func updateViews() {
        guard let flight = flight else {return}
        titleLabel?.text = flight.airline
        bodyTextView.text = flight.body
        
    }
    

}
