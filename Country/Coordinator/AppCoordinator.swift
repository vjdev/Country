//
//  AppCoordinator.swift
//  Country
//
//  Created by vijeesh on 10/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

final class AppCoordinator: NSObject,Coordinator {
  let window: UIWindow
  let rootViewController: UINavigationController
  
  init(window: UIWindow) {
    self.window = window
    rootViewController = UINavigationController()
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let signInVc = storyboard.instantiateViewController(withIdentifier: "SignInViewController") 
    rootViewController.pushViewController(signInVc, animated: false)
  }
  
  func start() {
    window.rootViewController = rootViewController
    window.makeKeyAndVisible()
  }
}

