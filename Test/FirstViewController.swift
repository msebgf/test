//
//  FirstViewController.swift
//  Test
//
//  Created by Sebastian Guerrero F on 10/8/18.
//  Copyright © 2018 SG. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var numbersTableView: UITableView!
  
  var numbers:[Int] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    generateNumbers()
  }
  
  func generateNumbers() {
    numbers = (0...200).filter { $0 % 2 == 0} // evens
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.text = "\(numbers[indexPath.row])"
    return cell
  }
}

