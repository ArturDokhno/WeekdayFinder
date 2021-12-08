//
//  ViewController.swift
//  Wee\kdayFinder
//
//  Created by Артур Дохно on 06.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dateTF: UITextField!
    @IBOutlet var monthTF: UITextField!
    @IBOutlet var yearTF: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func findDay(_ sender: Any) {
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"
        
        let weekDay = dateFormatter.string(from: date)
        let capitalizedWeekday = weekDay.capitalized
        
        resultLabel.text = capitalizedWeekday
    }

    
}

