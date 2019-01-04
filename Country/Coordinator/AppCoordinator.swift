//
//  AppCoordinator.swift
//  Country
//
//  Created by vijeesh on 10/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

final class AppCoordinator: Coordinator {
  let window: UIWindow
  let rootViewController: UINavigationController
  private var signInViewController: SignInViewController?
  private var signInCoordinator: SignInCoordinator?
  
  
  init(window: UIWindow) {
    self.window = window
    rootViewController = UINavigationController()
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let signInVc = storyboard.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
    rootViewController.pushViewController(signInVc, animated: false)
    signInViewController = signInVc
  }
  
  func start() {
    signInViewController?.delegate = self
    window.rootViewController = rootViewController
    window.makeKeyAndVisible()
  }
}

extension AppCoordinator: SignInDelegate {
  func signInPassed() {
    let signInCoordinator = SignInCoordinator(presenter: rootViewController)
    self.signInCoordinator = signInCoordinator
    self.signInCoordinator?.start()
  }
}
