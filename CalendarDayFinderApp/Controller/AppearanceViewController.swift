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
        if let settingsURL = URL(string: UIApplication.openSettingsURLString) {
            if UIApplication.shared.canOpenURL(settingsURL) {
                UIApplication.shared.open(settingsURL, options: [:], completionHandler: nil)
            }
        }
    }
    
    func setLabelText() {
        var labelText = "Unable to specify UI style"
        
        #warning("change from Light Mode is On to Dark Mode is ON, based on appearance. create extension AppearanceViewController") // if this is dark mode i want to have this text, if else than that text, else textLabel.text = labelText
        
        textLabel.text = labelText
    }
    
}

extension AppearanceViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    } // this will check whether i have dark or light mode
}
