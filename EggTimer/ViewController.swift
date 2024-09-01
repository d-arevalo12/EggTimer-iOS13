//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let softTime: Int = 5
  let mediumTime: Int = 7
  let hardTime: Int = 12

  @IBAction func softnessSelector(_ sender: UIButton) {
    print(sender.currentTitle!)
    let hardness = sender.currentTitle ?? "Soft"
  }

}
