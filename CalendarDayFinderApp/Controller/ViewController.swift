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
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var findButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func findWeekDay() {
        #warning("find day of the year on Find tapped")
        print(dayTextField.text ?? "")
        print(monthTextField.text ?? "")
        print(yearTextField.text ?? "")
        
// setting alert if any field is empty or zero
        
        if (dayTextField.text == "0" || dayTextField.text == "") || (monthTextField.text == "0" || monthTextField.text == "") || (yearTextField.text == "0" || yearTextField.text == "") {
            let title = "Something wrong!"
            let message = "Did you fill in all the fields and not with 0?"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "NO", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
        
//        Calendar
//        DateComponents
//        DateFormatter -> specify dateFormat
        
        let calendar = Calendar(identifier: .gregorian)
        var dateComponents = DateComponents()
        if let dayText = dayTextField.text, let day = Int(dayText) {
            dateComponents.day = day
        }
        if let monthText = monthTextField.text, let month = Int(monthText) {
            dateComponents.month = month
        }
        if let yearText = yearTextField.text, let year = Int(yearText) {
            dateComponents.year = year
        }

        
        if let date = calendar.date(from: dateComponents) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "EEEE"
            let dayOfWeek = dateFormatter.string(from: date)
            resultLabel.text = dayOfWeek
            findButton.setTitle("Clear", for: .normal)
        }
        
//        Logic Calculation, it can't be zero in any fields. If so, we need present alert, if something went wrong
        
        
//        Result label is for presenting the day
        
        
//        After successfully presented result, change Find to Clear (clear all text fields to "")
    }
    
    @IBAction func findButtonTapped(_ sender: Any) {
        findWeekDay()
    }
    
    
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

