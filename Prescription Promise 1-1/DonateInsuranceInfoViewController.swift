//
//  DonateInsuranceInfoViewController.swift
//  Prescription Promise 1-1
//
//  Created by Jessica Olivieri on 3/11/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import UIKit

class DonateInsuranceInfoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
	
	var imagePickerFront = UIImagePickerController()
	var imagePickerBack = UIImagePickerController()

	@IBOutlet weak var providerTextField: UITextField!
	
	@IBOutlet weak var idTextField: UITextField!
	
	@IBOutlet weak var groupNumTextField: UITextField!
	
	@IBOutlet weak var cardFrontImage: UIImageView!
	
	@IBOutlet weak var cardBackImage: UIImageView!
	
	override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	
	func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
		let selectedImageFront = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
		let selectedImageBack = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
		
		cardFrontImage.image = selectedImageFront
		cardBackImage.image = selectedImageBack
		
		dismiss(animated: true, completion: nil)
	}
	
	func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
		dismiss(animated: true, completion: nil)
	}
	
	func showAlert(title: String, message: String) {
		let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
		
		let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
		
		alertController.addAction(defaultAction)
		present(alertController, animated: true, completion: nil)
		
	}
	
	@IBAction func frontTakePhoto(_ sender: UIButton) {
		if UIImagePickerController.isSourceTypeAvailable(.camera){
			imagePickerFront.sourceType = .camera
			
			imagePickerFront.delegate = self
			
			present(imagePickerFront, animated: true, completion: nil)
		} else {
			showAlert(title: "Camera Not Available", message: "There is no camera available on this device.")
		}
	}
	
	@IBAction func frontPhotoLibrary(_ sender: UIButton) {
		imagePickerFront.sourceType = .photoLibrary
		
		imagePickerFront.delegate = self
		
		present(imagePickerFront, animated: true, completion: nil)
	}
	
	@IBAction func backTakePhoto(_ sender: UIButton) {
		if UIImagePickerController.isSourceTypeAvailable(.camera){
			imagePickerBack.sourceType = .camera
			
			imagePickerBack.delegate = self
			
			present(imagePickerBack, animated: true, completion: nil)
		} else {
			showAlert(title: "Camera Not Available", message: "There is no camera available on this device.")
		}
	}
	
	@IBAction func backPhotoLibrary(_ sender: UIButton) {
		imagePickerBack.sourceType = .photoLibrary
		
		imagePickerBack.delegate = self
		
		present(imagePickerBack, animated: true, completion: nil)
	}
	
}
