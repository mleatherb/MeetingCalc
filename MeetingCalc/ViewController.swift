//
//  ViewController.swift
//  MeetingCalc
//
//  Created by Michael Leatherbury on 5/17/17.
//  Copyright © 2017 Mintek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var meetingCostLabel: UITextView!
    @IBOutlet weak var numberOfAttendeesInput: UITextField!
    @IBOutlet weak var averageSalaryInput: UITextField!
    @IBOutlet weak var meetingLengthInput: UITextField!
    
    
    @IBAction func calculateButton(_ sender: Any) {
        
        
        let minWorkedInYear: Float = 52 * 5 * 8 * 60 * 60
        let attendeeCount = Float(numberOfAttendeesInput.text!)
        let averageSalary = Float(averageSalaryInput.text!)
        let meetingLength = Float(meetingLengthInput.text!)
        
        let meetingCost: Float = ((attendeeCount! * averageSalary!) / minWorkedInYear ) * meetingLength!
        
        meetingCostLabel.text = String(meetingCost)
        
    }


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

