//
//  RecieveViewController.swift
//  Prescription Promise 1-1
//
//  Created by Jessica Olivieri on 3/21/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import UIKit

class RecieveViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
	
	var imagePickerPrescription = UIImagePickerController()

	@IBOutlet weak var drugNameTextField: UITextField!
	@IBOutlet weak var dosageTextField: UITextField!
	@IBOutlet weak var datePrescribedTextField: UITextField!
	@IBOutlet weak var doctorTextField: UITextField!
	@IBOutlet weak var practiceTextField: UITextField!
	@IBOutlet weak var prescriptionImage: UIImageView!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	// unwind segue (go back to main View Controller)
	@IBAction func unwindFromViewController(segue: UIStoryboardSegue) {
		let source = segue.source as! RecieveViewController
	}
	
	func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
		let selectedImagePrescription = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
		
		prescriptionImage.image = selectedImagePrescription
		
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
	
	@IBAction func takePhotoButtonPressed(_ sender: UIButton) {
		if UIImagePickerController.isSourceTypeAvailable(.camera){
			imagePickerPrescription.sourceType = .camera
			
			imagePickerPrescription.delegate = self
			
			present(imagePickerPrescription, animated: true, completion: nil)
		} else {
			showAlert(title: "Camera Not Available", message: "There is no camera available on this device.")
		}
	}
	
	@IBAction func photoLibraryButtonPressed(_ sender: UIButton) {
		imagePickerPrescription.sourceType = .photoLibrary
		
		imagePickerPrescription.delegate = self
		
		present(imagePickerPrescription, animated: true, completion: nil)
	}
}
