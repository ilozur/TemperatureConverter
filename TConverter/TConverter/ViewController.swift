//
//  ViewController.swift
//  TConverter
//
//  Created by Edmond Podlegaev on 06.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var symbolOfTemperature: UILabel!
    
    
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 0
        }
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let senderValue = Int(round(sender.value))
        let temperatureCelsius = senderValue
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        let temperatureFahrenheit = (senderValue * 9 / 5) + 32
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
        let temperatureKelvin = senderValue + 273
        kelvinLabel.text = "\(temperatureKelvin)ºK"
        if senderValue <= 20 {
            symbolOfTemperature.text = "🥶"
            backgroundImage.image = UIImage(named: "coldest")
        }
        if (senderValue > 20 && senderValue <= 40) {
            symbolOfTemperature.text = "😨"
            backgroundImage.image = UIImage(named: "cold")
        }
        if (senderValue > 40 && senderValue <= 60) {
            symbolOfTemperature.text = "🙂"
            backgroundImage.image = UIImage(named: "normal")
        }
        if (senderValue > 60 && senderValue <= 80) {
            symbolOfTemperature.text = "😤"
            backgroundImage.image = UIImage(named: "hot")
        }
        if (senderValue > 80 && senderValue <= 100) {
            symbolOfTemperature.text = "🥵"
            backgroundImage.image = UIImage(named: "hottest")
        }
    }
    
}

