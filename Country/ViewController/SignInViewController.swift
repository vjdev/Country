//
//  SignInViewController.swift
//  Country
//
//  Created by vijeesh on 10/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

final class SignInViewController: UIViewController {
  
  @IBOutlet private weak var userNameTextField: UITextField!
  @IBOutlet private weak var passwordTextField: UITextField!
  
  private var viewModel = SignInViewModel()

  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  

  
  private func validationBinding() {
    viewModel.validationAlertMessage.bind { (alertMessage) in
      if let alertMessage = alertMessage {
        if alertMessage == "" {
          self.navigateToHomescreen()
        }
        else {
          self.showAlertWith(errorMessage: alertMessage)
        }
      }
    }
  }
  
  private func navigateToHomescreen() {
    
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
  }
  
  @IBAction func signInButtonClicked(_ sender: Any) {
    let userDetails = User.init(name: self.userNameTextField.text, password: self.passwordTextField.text)
    viewModel.updateUserDetails(userDetails: userDetails)
  }
  
  
  
}
