//
//  ViewController.swift
//  Country
//
//  Created by vijeesh on 10/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit
extension UIViewController {
  func showAlertWith(errorMessage message: String) {
    let alert = UIAlertController(title: "", message: message, preferredStyle:.alert)
    let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
    alert.addAction(cancelButton)
    self.present(alert, animated: true)
  }
}
