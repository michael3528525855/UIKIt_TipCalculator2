//
//  ViewController.swift
//  UIKIt_TipCalculator
//
//  Created by michael on 22/07/2024.
//

import UIKit

class ViewController: UIViewController {
    var billAmount:String = "0"
    var presentage:String = "10%"
    var tipAmount:String = ""
    var totalAmount:String = ""
    @IBOutlet weak var tenPresentage: UIButton!
    @IBOutlet weak var fifteenPresentage: UIButton!
    @IBOutlet weak var twentyPresentage: UIButton!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var TotaleAmountLable: UILabel!
    
    @IBOutlet weak var billAmountContent: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tenPresentage.setTitle("10%", for: .normal)
        fifteenPresentage.setTitle("15%", for: .normal)
        twentyPresentage.setTitle("20%", for: .normal)
    }

    
    
    
    @IBAction func presentage(_ sender: UIButton) {
        presentage = sender.currentTitle ?? "10%"
        tenPresentage.isSelected=false
        fifteenPresentage.isSelected=false
        twentyPresentage.isSelected=false
        sender.isSelected = true
    }
    
    @IBAction func calculat(_ sender: UIButton) {
        
        let ten = presentage.dropLast()
        let Ften = Float(ten)
        let OFTen = Ften!
        
        
        if let SavebillAmount = billAmountContent.text{
            let FbillAmount = Float(SavebillAmount)
            let OFbillAmount = FbillAmount!
            //print(OFbillAmount)
            
            
            
            let inttipamount = (OFbillAmount * OFTen)/100
            tipAmount = String(format:"%.2f",inttipamount)
            totalAmount=String(OFbillAmount + Float(tipAmount)!)
            TipAmountLabel.text = "Tip Amount: $\(tipAmount)"
            TotaleAmountLable.text = "total Amount: $\(totalAmount)"
        }
        
    }
    
}

