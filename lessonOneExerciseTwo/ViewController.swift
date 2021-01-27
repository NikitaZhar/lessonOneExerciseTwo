//
//  ViewController.swift
//  lessonOneExerciseTwo
//
//  Created by Nikita Zharinov on 26/01/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButtonLabel: UIButton!
    
    var isStartPressed = false
    var colorToTurn = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.frame.size.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.size.height / 2
    }

    @IBAction func startButtonPressed() {
        if !isStartPressed {
            startButtonLabel.setTitle("NEXT", for: .normal)
            isStartPressed.toggle()
        }
        
        switch colorToTurn {
        case 0, 3:
            redLightView.alpha = 1.0
            greenLightView.alpha = 0.3
            colorToTurn = 1
        case 1:
            yellowLightView.alpha = 1.0
            redLightView.alpha = 0.3
            colorToTurn = 2
        case 2:
            greenLightView.alpha = 1.0
            yellowLightView.alpha = 0.3
            colorToTurn = 3
        default:
            print("Error!")
        }
    }
}

