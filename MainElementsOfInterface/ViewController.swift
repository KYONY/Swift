//
//  ViewController.swift
//  MainElementsOfInterface
//
//  Created by Akademik on 05.06.2020.
//  Copyright © 2020 Viktor Pryima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Outleds
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var bigTextField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelForSlider: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    //Actions
    @IBAction func pushOnBotton(_ sender: UIButton) {
        headLabel.textColor = UIColor.red
    }

    @IBAction func choiceSegmentedControl(_ sender: UISegmentedControl) {
        if segmentedControl.selectedSegmentIndex == 0 {
            button.backgroundColor = UIColor.red
            progressView.progress = 0.35
        } else if segmentedControl.selectedSegmentIndex == 1 {
            button.backgroundColor = UIColor.green
            progressView.progress = 0.75
        } else {
            button.backgroundColor = UIColor.blue
            progressView.progress = 0.99
        }
    }
    
    @IBAction func changedTextField(_ sender: UITextField) {
        let text = sender.text
        headLabel.text = text
    }
    
    
    @IBAction func changeSlider(_ sender: UISlider) {
        labelForSlider.text = String(Int(sender.value))
        
    }
    

    @IBAction func changeSwitch(_ sender: UISwitch) {
        if(sender.isOn) {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        progressView.progress = (Float(sender.value))*0.1
    }
    
    }
    


