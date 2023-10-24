//
//  ViewController.swift
//  CalendarDayFinderApp
//
//  Created by erika.talberga on 24/10/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "info" {
            // Get the new view controller using segue.destination.
//      vc is a view controller here
            guard let vc = segue.destination as? InfoViewController
            else { return }
            
            // Pass the selected object to the new view controller
            vc.desc = "A day is the time period of a full rotation of the Earth with respect to the Sun. On average, this is 24 hours (86,400 seconds). "
            vc.info = "Do you know what is a day?"
        }
    }
    

}

