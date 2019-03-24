//
//  DonatePersInfoViewController.swift
//  Prescription Promise 1-1
//
//  Created by Jessica Olivieri on 3/11/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import UIKit

class DonatePersInfoViewController: UIViewController {

	@IBOutlet weak var firstNameText: UITextField!
	@IBOutlet weak var lastNameText: UITextField!
	
	@IBOutlet weak var birthdateText: UITextField!
	
	@IBOutlet weak var addressText: UITextField!
	
	@IBOutlet weak var cityText: UITextField!
	
	@IBOutlet weak var stateText: UITextField!
	
	@IBOutlet weak var zipcodeText: UITextField!
	
	override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	// unwind segue
	@IBAction func unwindFromViewController(segue: UIStoryboardSegue) {
		let source = segue.source as! DonatePersInfoViewController
	}
	@IBAction func firstNameTextChanged(_ sender: UITextField) {
	}
	
	@IBAction func lastNameText(_ sender: UITextField) {
	}
	
	@IBAction func birthdateText(_ sender: UITextField) {
	}
	
	@IBAction func addressText(_ sender: UITextField) {
	}
	@IBAction func cityText(_ sender: UITextField) {
	}
	
	@IBAction func stateText(_ sender: UITextField) {
	}
	
	@IBAction func zipcodeText(_ sender: UITextField) {
		func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
			let newText = (textView.text as NSString).replacingCharacters(in: range, with: text)
			let numberOfChars = newText.count
			return numberOfChars < 7;
		}
	}
	
}
