//
//  ViewController.swift
//  AppWorks School
//
//  Created by Enola Zhu on 2022/1/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var acountLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var acountText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var checkText: UITextField!
    @IBOutlet weak var changeSegmentControl: UISegmentedControl!
    @IBOutlet weak var checkButton: UIButton!
    
    override func viewDidLoad() {
        let changeSegmentControl = UISegmentedControl(items: ["Log In", "Sign up"])
        super.viewDidLoad()
        onChange(changeSegmentControl)
        textFieldShouldReturn(acountText)
    }
    @IBAction func onChange(_ sender: UISegmentedControl) {
        changeSegmentControl.backgroundColor = UIColor.white
        changeSegmentControl.layer.borderColor = UIColor.black.cgColor
        changeSegmentControl.layer.borderWidth = 1
        changeSegmentControl.selectedSegmentTintColor = UIColor.black
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        changeSegmentControl.setTitleTextAttributes(titleTextAttributes, for:.normal)
        let titleTextAttributes1 = [NSAttributedString.Key.foregroundColor: UIColor.white]
        changeSegmentControl.setTitleTextAttributes(titleTextAttributes1, for:.selected)
        switchSegmented(changeSegmentControl.selectedSegmentIndex)
        
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == acountText) {
            textField.text = ""
        } else if (textField == passwordText) {
            textField.text = ""
        } else if (textField == checkText) {
            textField.text = ""
        }
    }
    func switchSegmented(_ theIndex: Int) {
        textFieldDidBeginEditing(acountText)
        textFieldDidBeginEditing(passwordText)
        textFieldDidBeginEditing(checkText)
        if theIndex == 0 {
            checkLabel.textColor = UIColor.gray
            checkText.backgroundColor = UIColor.darkGray
            checkText.isUserInteractionEnabled = false
        } else {
            checkText.backgroundColor = UIColor.white
            checkLabel.textColor = UIColor.black
            checkText.isUserInteractionEnabled = true
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        acountText.delegate = self
        passwordText.delegate = self
        checkText.delegate = self
        return true
    }
    @IBAction func showAlertButtonTapped(_ sender: UIButton) {
        switch changeSegmentControl.selectedSegmentIndex {
        case 0:
            if acountText.text == "appworks_school@gmail.com" && passwordText.text == "1234" {
                showSuccessAlert("Login success")
            } else if acountText.text?.isEmpty ?? true {
                showErrorAlert("Acount should not be empty")
            } else if passwordText.text?.isEmpty ?? true {
                showErrorAlert("Password should not be empty")
            } else {
                showErrorAlert("Login fail")
            }
        case 1:
            if acountText.text?.isEmpty ?? true {
                showErrorAlert("Acount should not be empty")
            } else if passwordText.text?.isEmpty ?? true {
                showErrorAlert("Password should not be empty")
            } else if checkText.text?.isEmpty ?? true {
                showErrorAlert("Check password should not be empty")
            } else if checkText.text != passwordText.text {
                showErrorAlert("Signup fail")
            } else {
                showSuccessAlert("Signup success")
            }
        default:
            return
        }
        func showErrorAlert(_ message: String) {
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        func showSuccessAlert(_ message: String) {
            let alert = UIAlertController(title: "Success", message: message, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
