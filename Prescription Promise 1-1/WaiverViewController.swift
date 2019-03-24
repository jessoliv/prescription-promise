//
//  WaiverViewController.swift
//  Prescription Promise 1-1
//
//  Created by Jessica Olivieri on 3/24/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import UIKit

class WaiverViewController: UIViewController {

	@IBOutlet weak var waiverText: UITextView!
	
	override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	// unwind segue (go back to main View Controller)
	@IBAction func unwindFromViewController(segue: UIStoryboardSegue) {
		let source = segue.source as! WaiverViewController
	}
	

}
