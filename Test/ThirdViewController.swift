//
//  ThirdViewController.swift
//  Test
//
//  Created by Sebastian Guerrero F on 10/8/18.
//  Copyright © 2018 SG. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  func presentAlert(title:String, alertType: UIAlertControllerStyle) {
    
    let alertController = UIAlertController(title: "Alert", message: "a Message", preferredStyle: alertType)
    let okayAction = UIAlertAction(title: "Okay", style: .default) { (_) in
      print("Okay")
    }
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
      print("Cancel")
    }
    
    alertController.addAction(okayAction)
    alertController.addAction(cancelAction)
    
    present(alertController, animated: true, completion: nil)
  }
  
  @IBAction func alertButtonPressed(_ sender: Any) {
    presentAlert(title: "Alert", alertType: .alert)
  }
  
  @IBAction func actionSheetButtonPressed(_ sender: Any) {
    presentAlert(title: "ActionSheet", alertType: .actionSheet)
  }
  
  
}
