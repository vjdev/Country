//
//  SignInCoordinator.swift
//  Country
//
//  Created by vijeesh on 16/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

class SignInCoordinator: Coordinator {
  private let presenter: UINavigationController
  private var countryListViewController: CountryListViewController?
  private var countryListCoordinator: CountryCoordinator?

  
  
  init(presenter: UINavigationController) {
    self.presenter = presenter
  }
  
  func start() {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let countryVC = storyboard.instantiateViewController(withIdentifier: "CountryListViewController") as! CountryListViewController
    countryVC.delegate = self
    presenter.pushViewController(countryVC, animated: false)
  }
}


extension SignInCoordinator: CountryListDelegate {
  func countrySelected(country: Country) {
    let coordinator = CountryCoordinator(presenter: presenter, country: country)
    self.countryListCoordinator = coordinator
    self.countryListCoordinator?.start()
  }
}

