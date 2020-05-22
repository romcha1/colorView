

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainViewLabel: UIView!
    
    @IBOutlet var redValueSliderLabel: UILabel!
    @IBOutlet var greenValueSliderLabel: UILabel!
    @IBOutlet var blueValueSliderLabel: UILabel!
    
    @IBOutlet var redSladerLabel: UISlider!
    @IBOutlet var greenSliderLabel: UISlider!
    @IBOutlet var blueSliderLabel: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainViewLabel.layer.cornerRadius = 10
    
        redSladerLabel.value = 0.00
        redSladerLabel.minimumValue = 0.01
        redSladerLabel.maximumValue = 1
        redSladerLabel.minimumTrackTintColor = .red
        
        greenSliderLabel.value = 0.00
        greenSliderLabel.minimumValue = 0.01
        greenSliderLabel.maximumValue = 1
        greenSliderLabel.minimumTrackTintColor = .green
        
        blueSliderLabel.value = 0.00
        blueSliderLabel.minimumValue = 0.01
        blueSliderLabel.maximumValue = 1
        blueSliderLabel.minimumTrackTintColor = .blue
    }

    func colorChange() {
        mainViewLabel.backgroundColor = UIColor(
            red: CGFloat(redSladerLabel.value),
            green: CGFloat(greenSliderLabel.value),
            blue: CGFloat(blueSliderLabel.value),
            alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        colorChange()
        redValueSliderLabel.text = String(format: "%.2f", redSladerLabel.value)
    }
    
    @IBAction func greenSliderAction() {
        colorChange()
        greenValueSliderLabel.text = String(format: "%.2f", greenSliderLabel.value)
    }
    
    @IBAction func blueSliderAction() {
        colorChange()
        blueValueSliderLabel.text = String(format: "%.2f", blueSliderLabel.value)
    }
}

