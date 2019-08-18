//
//  AddFlightViewController.swift
//  FlightLister
//
//  Created by Austin Potts on 8/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddFlightViewController: UIViewController {

    @IBOutlet weak var airlineTextField: UITextField!
    @IBOutlet weak var bodyTextField: UITextView!
    
    var flightController: FlightController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let newAirline = airlineTextField.text, airlineTextField.text != "" else {return}
         guard let newBody = bodyTextField.text, bodyTextField.text != "" else {return}
        let newFlight = Flight(airline: newAirline, body: newBody)
        flightController?.flights.append(newFlight)
        navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
