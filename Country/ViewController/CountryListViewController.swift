//
//  CountryListViewController.swift
//  Country
//
//  Created by vijeesh on 10/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

protocol CountryListDelegate: class {
  func countrySelected(country: Country)
}

final class CountryListViewController: UIViewController {
  
  @IBOutlet private weak var countryListTableView: UITableView!
  private var viewModel = CountryListViewModel()
  private var countryList: [Country]?
  private let cellIdentifier = "Cell"
  weak var delegate: CountryListDelegate?
  
    override func viewDidLoad() {
        super.viewDidLoad()
      binding()
    }
  
  private func binding() {
    viewModel.countryList.bind { [unowned self] (arrayOfCountries) in
      self.countryList = arrayOfCountries
      self.countryListTableView.reloadData()
    }
  }
}


extension CountryListViewController: UITableViewDataSource,UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if let contents = countryList {
      return contents.count
    }
    return 0
  }
  

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let country = countryList![indexPath.row]
    delegate?.countrySelected(country: country)
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell : UITableViewCell!
    cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
    if cell == nil {
      cell = UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
    }
    let country = countryList![indexPath.row]
    cell.textLabel?.text = country.name
    return cell
  }

}
