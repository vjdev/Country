//
//  CountryDetailViewController.swift
//  Country
//
//  Created by vijeesh on 10/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

final class CountryDetailViewController: UIViewController {
  
  @IBOutlet private weak var countryNameLabel: UILabel!
  @IBOutlet private weak var flagImageView: UIImageView!
  var country: Country?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    if let countryName = self.country?.name {
      self.countryNameLabel.text = countryName
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
}
