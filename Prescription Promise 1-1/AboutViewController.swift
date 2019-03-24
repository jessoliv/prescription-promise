//
//  AboutViewController.swift
//  Prescription Promise 1-1
//
//  Created by Jessica Olivieri on 3/11/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	// unwind segue (go back to select insurance View Controller)
	@IBAction func unwindFromViewController(segue: UIStoryboardSegue) {
		let source = segue.source as! AboutViewController
	}

}
