//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let eggTimes: [String: Int] = ["Soft": 5, "Medium": 7, "Hard": 12]

  @IBAction func softnessSelector(_ sender: UIButton) {
    print(sender.currentTitle!)
    let hardness = sender.currentTitle ?? "Soft"

    switch hardness {
    case "Soft":
      print(eggTimes["Soft"] ?? 5)
    case "Medium":
      print(eggTimes["Medium"] ?? 7)
    case "Hard":
      print(eggTimes["Hard"] ?? 121)
    default:
      print("Errror")
    }
  }
}
