//
//  CountryCoordinator.swift
//  Country
//
//  Created by vijeesh on 16/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

class CountryCoordinator: Coordinator {
  private let presenter: UINavigationController
  private var countryListViewController: CountryListViewController?
  private var country: Country?

  
  init(presenter: UINavigationController,country: Country?) {
    self.country = country
    self.presenter = presenter
  }
  
  func start() {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let countryVC = storyboard.instantiateViewController(withIdentifier: "CountryDetailViewController") as! CountryDetailViewController
    countryVC.country  = self.country
    presenter.pushViewController(countryVC, animated: false)
  }
}
