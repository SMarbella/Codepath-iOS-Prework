//
//  ViewController.swift
//  SMarbellaIntroduction
//
//  Created by Stephanie Marbella on 1/16/23.
//

import UIKit

class ViewController: UIViewController {
    // Text box portion of the app.
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    // Person's age.
    @IBOutlet weak var ageStepper: UIStepper!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBAction func ageStepperDidChange(_ sender: UIStepper) {
        ageLabel.text = "\(Int(sender.value))"
    }
    
    // Year in school.
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    // Pets section of the app.
    @IBOutlet weak var moreDogsStepper: UIStepper!
    @IBOutlet weak var numberOfDogsLabel: UILabel!
    
    @IBOutlet weak var moreCatsStepper: UIStepper!
    @IBOutlet weak var numberOfCatsLabel: UILabel!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!

    
    @IBAction func dogStepperDidChange(_ sender: UIStepper) {
        numberOfDogsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func catStepperDidChange(_ sender: UIStepper) {
        numberOfCatsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        var first = firstNameTextField.text!
        var last = lastNameTextField.text!
        var school = schoolNameTextField.text!
        var age = ageLabel.text!
        var dogs = numberOfDogsLabel.text!
        var cats = numberOfCatsLabel.text!
        var morePets = morePetsSwitch.isOn
        var pets: String = ""
        var petsQuantity = "I own \(dogs) dogs and \(cats) cats."
        
        // Lets us choose the title we have selected from the segmented control.
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // Default values for blank text boxes.
        if first == "" {
            first = "John"
        }
        if last == "" {
            last = "Smith"
        }
        if school == "" {
            school = "an unspecified school"
        }
        
        // Changes text if the person wants more pets or not.
        if morePets == true {
            pets = "I hope to buy more pets in the future once I can afford them."
        } else {
            pets = "I am happy with the pets I currently have."
        }
        
        // Changes text depending on the number of each pet.
        let dogsQuantity = Int(numberOfDogsLabel.text!)
        let catsQuantity = Int(numberOfCatsLabel.text!)
        let petsOwned = (dogsQuantity, catsQuantity)
        switch petsOwned {
            case (0, 0):
                petsQuantity = "I do not own any pets."
            case (0, 1):
                petsQuantity = "I have \(cats) cat but no dogs."
            case (1, 0):
                petsQuantity = "I have \(dogs) dog but no cats."
            case (1, 1):
                petsQuantity = "I have \(dogs) dog and \(cats) cat."
            default:
                if dogsQuantity ?? 2 >= 2 && catsQuantity == 0 {
                    petsQuantity = "I only have \(dogs) dogs."
                }
                if dogsQuantity ?? 2 >= 2 && catsQuantity == 1 {
                    petsQuantity = "I have \(dogs) dogs and \(cats) cat."
                }
                if catsQuantity ?? 2 >= 2 && dogsQuantity == 0 {
                    petsQuantity = "I only have \(cats) cats."
                }
                if catsQuantity ?? 2 >= 2 && dogsQuantity == 1 {
                    petsQuantity = "I have \(cats) cats and \(dogs) dog."
                }
        }
        
        
        // Creates a variable of type string that holds an introduction. The introduction interpolates the values from the text fields provided.
        let introduction = """
        My name is \(first) \(last). I am \(age) years old. I am currently in my \(year!) year at \(school).
        
        \(petsQuantity) It is \(morePets) that I want more pets. \(pets)
        """
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "Hello!", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action alerts the controller, so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

