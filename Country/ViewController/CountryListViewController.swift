//
//  CountryListViewController.swift
//  Country
//
//  Created by vijeesh on 10/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

final class CountryListViewController: UIViewController {
  
  @IBOutlet private weak var countryListTableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension CountryListViewController: UITableViewDataSource,UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: UITableViewCell = self.countryListTableView.dequeueReusableCell(withIdentifier: "cellIdentifier")!
    cell.selectionStyle = .none
    cell.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
    return cell
  }

}
