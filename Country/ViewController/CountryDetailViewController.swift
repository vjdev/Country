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
  
  @IBOutlet private weak var capitalLabel: UILabel!
  @IBOutlet private weak var regionLabel: UILabel!
  @IBOutlet private weak var populationLabel: UILabel!
  @IBOutlet private weak var countryCodeLabel: UILabel!
  
  
  var country: Country?
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    updateUI()
  }
  
  
  private func updateUI() {
    self.countryNameLabel.text = self.country?.name.unwrapped()
    self.capitalLabel.text = "Capital: \(self.country?.capital.unwrapped() ?? "")"
    self.regionLabel.text = "Region: \(self.country?.region.unwrapped() ?? "")"
    self.populationLabel.text = "Population: \(self.country?.population.unwrapped() ?? 0)"
    self.countryCodeLabel.text = "CountryCode:\(self.country?.numericCode.unwrapped() ?? "")"
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
}
