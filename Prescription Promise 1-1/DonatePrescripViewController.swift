//
//  DonatePrescripViewController.swift
//  Prescription Promise 1-1
//
//  Created by Jessica Olivieri on 3/14/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import UIKit

class DonatePrescripViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
	
	var imagePickerLabel = UIImagePickerController()
	var imagePickerMedicine = UIImagePickerController()

	@IBOutlet weak var drugNameTextField: UITextField!
	@IBOutlet weak var dosageTextField: UITextField!
	@IBOutlet weak var expirationDateTextField: UITextField!
	@IBOutlet weak var prescribersNameTextField: UITextField!

	@IBOutlet weak var labelImage: UIImageView!
	@IBOutlet weak var medicineImage: UIImageView!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
		let selectedImageLabel = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
		let selectedImageMedicine = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
		
		labelImage.image = selectedImageLabel
		medicineImage.image = selectedImageMedicine
		
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
	
	@IBAction func labelTakePhoto(_ sender: UIButton) {
		if UIImagePickerController.isSourceTypeAvailable(.camera){
			imagePickerLabel.sourceType = .camera
			
			imagePickerLabel.delegate = self
			
			present(imagePickerLabel, animated: true, completion: nil)
		} else {
			showAlert(title: "Camera Not Available", message: "There is no camera available on this device.")
		}
	}
	
	@IBAction func labelLibrary(_ sender: UIButton) {
		imagePickerLabel.sourceType = .photoLibrary
		
		imagePickerLabel.delegate = self
		
		present(imagePickerLabel, animated: true, completion: nil)
	}
	
	@IBAction func medicineTakePhoto(_ sender: UIButton) {
		if UIImagePickerController.isSourceTypeAvailable(.camera){
			imagePickerMedicine.sourceType = .camera
			
			imagePickerMedicine.delegate = self
			
			present(imagePickerMedicine, animated: true, completion: nil)
		} else {
			showAlert(title: "Camera Not Available", message: "There is no camera available on this device.")
		}
	}
	
	@IBAction func medicineLibrary(_ sender: UIButton) {
		imagePickerMedicine.sourceType = .photoLibrary
		
		imagePickerMedicine.delegate = self
		
		present(imagePickerMedicine, animated: true, completion: nil)
	}
}
