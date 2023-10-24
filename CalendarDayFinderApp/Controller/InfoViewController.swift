//
//  InfoViewController.swift
//  CalendarDayFinderApp
//
//  Created by erika.talberga on 24/10/2023.
//

import UIKit

class InfoViewController: UIViewController {


    @IBOutlet weak var appInfoLabel: UILabel!
    @IBOutlet weak var appDescLabel: UILabel!
    
    
    
    var info: String?
    var desc: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDescLabel.text = desc
        appInfoLabel.text = info
        
//        DONE
//        #warning("assign value to the labels")
        // Do any additional setup after loading the view.
    }

}
