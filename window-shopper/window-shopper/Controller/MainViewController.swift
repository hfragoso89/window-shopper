//
//  ViewController.swift
//  window-shopper
//
//  Created by Fragoso, Hector on 2/5/20.
//  Copyright © 2020 Fragoso, Hector. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var hourlyWageTxt: CurrencytextField!
    @IBOutlet weak var priceTxt: CurrencytextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
//        calculateBtn.target(forAction: #selector(MainViewController.calculate), withSender: self)
        calculateBtn.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        hourlyWageTxt.inputAccessoryView = calculateBtn
        priceTxt.inputAccessoryView = calculateBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate(){
        if let wageTxt = hourlyWageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                
                if let result = Wage.getHours(forWage: wage, andPrice: price){
                    resultLbl.text = "\(result)"
                    hoursLbl.isHidden = false
                } else {
                    resultLbl.text = "Unable to calculate"
                    hoursLbl.isHidden = true
                }
                
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: UIButton) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        hourlyWageTxt.text = ""
        priceTxt.text = ""
        
    }
}

