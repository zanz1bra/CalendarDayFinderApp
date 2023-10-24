//
//  AppearanceViewController.swift
//  CalendarDayFinderApp
//
//  Created by erika.talberga on 24/10/2023.
//

import UIKit

class AppearanceViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeItemTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func openSettings(_ sender: Any) {
//   DONE
// #warning("open ios simulator settings app")
        if let settings = URL(string: UIApplication.openSettingsURLString) {
            if UIApplication.shared.canOpenURL(settings) {
                UIApplication.shared.open(settings, options: [:], completionHandler: nil)
            }
        }
    }
    
    func isDarkMode() -> Bool {
        if #available(iOS 12.0, *) {
            return traitCollection.userInterfaceStyle == .dark
        } else {
            return false
        }
    }
    
    func setLabelText() {
        var labelText = "Unable to specify UI style"
        
        if isDarkMode() {
            labelText = "Dark Mode is ON"
        } else if isDarkMode() == false {
            labelText = "Light Mode is ON"
        }
        
//        DONE
//        #warning("change from Light Mode is On to Dark Mode is ON, based on appearance. create extension AppearanceViewController")
        
        textLabel.text = labelText
    }
    
}

extension AppearanceViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        setLabelText()
    } 
}
