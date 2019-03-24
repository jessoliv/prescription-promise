//
//  DrugTakebackViewController.swift
//  Prescription Promise 1-1
//
//  Created by Jessica Olivieri on 3/21/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import UIKit
import MapKit

class DrugTakebackViewController: UIViewController {

	@IBOutlet weak var drugImage: UIImageView!
	@IBOutlet weak var takebackDayStatic: UILabel!
	@IBOutlet weak var takebackDayDate: UILabel!
	@IBOutlet weak var closestDistributionStatic: UILabel!
	@IBOutlet weak var closestDistributionLabel: UILabel!
	@IBOutlet weak var addressLabel: UILabel!
	@IBOutlet weak var drugMapView: MKMapView!
	
	var spot: Spot!
	let regionDistance: CLLocationDistance = 750 // 750 meters or about 0.5 mile
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		// drugMapView.delegate = self
		
		if spot == nil {
			spot = Spot()
		}
		
		let region = MKCoordinateRegion(center: spot.coordinate, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
		drugMapView.setRegion(region, animated: true)
		updateUserInterface()

    }
	
	// unwind segue (go back to main View Controller)
	@IBAction func unwindFromViewController(segue: UIStoryboardSegue) {
		let source = segue.source as! DrugTakebackViewController
	}
	
	func updateUserInterface() {
		closestDistributionLabel.text = spot.name
		addressLabel.text = spot.address
		updateMap()
	}
	
	func updateMap() {
		drugMapView.removeAnnotations(drugMapView.annotations)
		drugMapView.addAnnotation(spot)
		drugMapView.setCenter(spot.coordinate, animated: true)
	}


}
