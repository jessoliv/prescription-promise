//
//  ViewController.swift
//  Prescription Promise 1-1
//
//  Created by Jessica Olivieri on 2/21/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import UIKit
import AWSAppSync

class ViewController: UIViewController {

    var user: User?

    override func viewDidLoad() {
		super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        user = User(awsAppSync: appDelegate.appSyncClient!)
	}

	@IBAction func donateButtonPressed(_ sender: UIButton) {
	}
	
	@IBAction func recieveButtonPressed(_ sender: UIButton) {
	}
	
	@IBAction func faqButtonPressed(_ sender: UIButton) {
	}
	
	@IBAction func personalButtonPressed(_ sender: UIButton) {
	}
	
	@IBAction func messagesButtonPressed(_ sender: UIButton) {
	}
	
	@IBAction func insuranceButtonPressed(_ sender: UIButton) {
	}
	
	@IBAction func billingButtonPressed(_ sender: UIButton) {
	}
	
	@IBAction func waiverButtonPressed(_ sender: UIButton) {
	}
	
	@IBAction func rulesButtonPressed(_ sender: UIButton) {
	}
	
	@IBAction func takebackButtonPressed(_ sender: UIButton) {
	}
	
}

