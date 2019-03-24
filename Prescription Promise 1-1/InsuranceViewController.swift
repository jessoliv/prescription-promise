//
//  InsuranceViewController.swift
//  Prescription Promise 1-1
//
//  Created by Jessica Olivieri on 3/14/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import UIKit

class InsuranceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
	
	// unwind segue (go back to main View Controller)
	@IBAction func unwindFromViewController(segue: UIStoryboardSegue) {
		let source = segue.source as! InsuranceViewController
	}
	
	@IBAction func medicareButtonPressed(_ sender: UIButton) {
	}
	@IBAction func medicaidButtonPressed(_ sender: UIButton) {
	}
	@IBAction func privateButtonPressed(_ sender: UIButton) {
	}
	@IBAction func noneButtonPressed(_ sender: UIButton) {
	}
	
}
