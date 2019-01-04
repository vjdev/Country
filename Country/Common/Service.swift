//
//  Service.swift
//  Country
//
//  Created by vijeesh on 16/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

final class Service {
  func getCountryList(completion: @escaping ([Country]?,Error?) -> ()) {
    let urlString: URL = URL(string: "https://restcountries.eu/rest/v2/all")!
    
    let request = URLRequest(url: urlString)
    URLSession.shared.dataTask(with: request) { (data, response, error) in
      
      print ("Response------->",response!)
      if error != nil {
        completion(nil, error)
        return
      }
      
      guard let data = data else { return }
      do {
        let countries = try JSONDecoder().decode([Country].self, from: data)
        DispatchQueue.main.async {
          print(countries)
          completion(countries,nil)
        }
      }
      catch let jsonError{
        print("Failed",jsonError)
      }
      }.resume()
  }
}

