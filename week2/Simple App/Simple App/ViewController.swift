//
//  ViewController.swift
//  Simple App
//
//  Created by Enola Zhu on 2022/1/14.
//

import UIKit

class ViewController: UIViewController {
    var showText = ""
    var hexColor = "#71B9B4"
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = hexStringToUIColor(hex: hexColor)
        middleLabel.text = "You are born with 300 bones; by the time you are an adult you will have 206"
        middleLabel.lineBreakMode = .byWordWrapping
        middleLabel.numberOfLines = 0
     }
    @IBAction func changeTextAndColor() {
        let texts = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.", "Contrary to popular belief, Lorem Ipsum is not simply random text.", "Richard McClintock, a Latin professor at Hampden-Sydney College in ", "looked up one of the more obscure Latin words, consectetur", "from a Lorem Ipsum passage, and going through the cities of the word", "This book is a treatise on the theory of ethics, very popular during the.", "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."]
        self.middleLabel.text = texts.randomElement()!
        changeBackgroundCColor()
    }
    func changeBackgroundCColor() {
        let colors = ["#3db6c8", "#71B9B4", "#56a4af", "#56af96", "#77af56", "#56afa0", "#3dc8b0"]
        hexColor = colors.randomElement()!
        self.view.backgroundColor = hexStringToUIColor(hex: hexColor)
    }
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

