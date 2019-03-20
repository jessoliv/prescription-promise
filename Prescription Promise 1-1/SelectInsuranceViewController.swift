//
//  SelectInsuranceViewController.swift
//  Prescription Promise 1-1
//
//  Created by Jessica Olivieri on 3/20/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import UIKit

class SelectInsuranceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	@IBAction func unwindFromViewController(segue: UIStoryboardSegue) {
		let source = segue.source as! SelectInsuranceViewController
	}

}
