//
//  CountryListViewModel.swift
//  Country
//
//  Created by vijeesh on 16/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

class CountryListViewModel: NSObject {
  var countryList: Box<[Country]?> = Box(nil)
  
  override init() {
    super.init()
    fetchHomeScreenContents()
  }
  
  func fetchHomeScreenContents() {
    Service().getCountryList { (arrayOfCOuntries, error) in
      if error == nil {
        self.countryList.value = arrayOfCOuntries;
      } else {
        print("error")
      }
    }
  }

}
