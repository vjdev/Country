//
//  SignInViewModel.swift
//  Country
//
//  Created by vijeesh on 10/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

final class SignInViewModel: NSObject {
  
  private let minimumPhoneNumberLength = 10
  private let minimumPasswordLength = 3
  var user = User()
  
  
  var validationAlertMessage: Box<String?> = Box(nil)
  
  func updateUserDetails(userDetails: User) {
    user = userDetails
    validateUserdetails()
  }
  
  
  private func validateUserdetails() {
    var errorMessage = ""
    if (user.name?.count)! < minimumPhoneNumberLength && user.name == "" {
      errorMessage = "Please enter phone number"
    } else {
      if user.name != "9809658624" {
        errorMessage = "Incorrect phone number"
      }
    }
    if errorMessage == "" {
      if (user.password?.count)! < minimumPasswordLength && user.password == "" {
        errorMessage = "Please enter password"
      }else {
        if user.password != "open" {
          errorMessage = "Incorrect password"
        }
      }
    }
    validationAlertMessage.value = errorMessage
  }
}
