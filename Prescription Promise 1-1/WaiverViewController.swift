//
//  WaiverViewController.swift
//  Prescription Promise 1-1
//
//  Created by Jessica Olivieri on 3/24/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import UIKit
import SignatureView

class WaiverViewController: UIViewController {

	@IBOutlet weak var waiverText: UITextView!
    @IBOutlet weak var signatureView: SignatureView!
    
	override func viewDidLoad() {
        super.viewDidLoad()
        signatureView.backgroundColor = UIColor.lightText
        signatureView.backgroundLineColor = UIColor.black
//        var image = UIImage(color: .black)
//        var border = UIImageView(image: image)
//        let sv = signatureView.frame
//        border.frame = CGRect(x: sv.origin.x - 2, y: sv.origin.y - 2, width: sv.width + 4, height: sv.height + 4)
//        self.view.addSubview(border)
//        border.sendSubviewToBack(self.view)
//    signatureView.bringSubviewToFront(self.view)
    }
	
	// unwind segue (go back to main View Controller)
	@IBAction func unwindFromViewController(segue: UIStoryboardSegue) {
		let source = segue.source as! WaiverViewController
	}
	
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        var image = signatureView.signatureImage()
        
    }
    
}

//extension UIImage {
//    convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
//        let rect = CGRect(origin: .zero, size: size)
//        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
//        color.setFill()
//        UIRectFill(rect)
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//
//        guard let cgImage = image?.cgImage else { return nil }
//        self.init(cgImage: cgImage)
//    }
//}
