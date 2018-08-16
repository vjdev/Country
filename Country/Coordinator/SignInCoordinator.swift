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
  private var signInViewController: SignInViewController?

  
  
  init(presenter: UINavigationController) {
    self.presenter = presenter
  }
  
  func start() {
  }
}
