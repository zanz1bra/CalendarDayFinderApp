//
//  ViewController.swift
//  CalendarDayFinderApp
//
//  Created by erika.talberga on 24/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dayTextField: UITextField!
    
    @IBOutlet weak var monthTextField: UITextField!
    
    @IBOutlet weak var yearTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func findWeekDay()  {
#warning("find day of the year on Find tapped")
        print(dayTextField.text ?? "")
        print(monthTextField.text ?? "")
        print(yearTextField.text ?? "")
        
        
        
        
        //        if (dayTextField.text == "0" || dayTextField.text == "") || (monthTextField.text == "0" || monthTextField.text == "") || (yearTextField.text == "0" || yearTextField.text == "") {
        //            let title = "Something wrong!"
        //            let message = "Did you fill all the fields?"
        //            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        //            alert.addAction(UIAlertAction(title: "NO", style: .default, handler: nil))
        //
        //            self.present(alert, animated: true)
        //
        //        }
        //
        
        
        //        Calendar
        //        DateComponents
        //        DateFormatter -> specify dateFormat
        
        //        Logic calculation, it can't be 0
        //        Alert if something is wrong
        
        //        Result label is for presenting the day
        //        After successfully presented result, change Find to Clear (clear all text fields to "")
        //
        
        
        
        
        
        // MARK: - Navigation
        
        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "info" {
                // Get the new view controller using segue.destination.
                guard let vc = segue.destination as? InfoViewController
                else { return }
                
                // Pass the selected object to the new view controller
                vc.desc = "A day is the time period of a full rotation of the Earth with respect to the Sun. On average, this is 24 hours (86,400 seconds). "
                vc.info = "Do you know what is a day?"
            }
        }
        
        
    }
    
}
