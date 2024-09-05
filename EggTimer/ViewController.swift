//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var timerTitleView: UILabel!
  @IBOutlet weak var progressBar: UIProgressView!

  let eggTimes: [String: Int] = ["Soft": 5, "Medium": 420, "Hard": 720]
  var totalTime = 0
  var secondsPassed = 0

  @IBAction func softnessSelector(_ sender: UIButton) {
    //print(sender.currentTitle!)
    let hardness = sender.currentTitle ?? "Soft"

    let totalTime = eggTimes[hardness]!

    countDownTimer(timerTime: totalTime)
    //print(eggTime)
  }

  func countDownTimer(timerTime: Int) {
    let countdown = Array(1...timerTime)

    let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
      print(countdown[self.secondsPassed])
      self.secondsPassed += 1
      let percentageProgress = Float(self.secondsPassed) / Float((countdown.last!))
      self.progressBar.progress = Float(percentageProgress)

      if self.secondsPassed >= countdown.count {
        timer.invalidate()
        self.timerTitleView.text = "Done"
      }
    }
  }

  // TODO: Add alarm sound when progress bar is completed

}
