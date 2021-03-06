//
//  FirstPageUIController.swift
//  OpenSourceEvents-iOS
//
//  Created by Anubhav Singh on 15/05/20.
//  Copyright © 2020 Catalyst. All rights reserved.
//

import UIKit

class FirstPageUIController: UIViewController {
    
    @IBOutlet weak var numofevents: UILabel!
    @IBOutlet weak var sourceDefi: UITextView!
    @IBOutlet weak var hackathonDefi: UITextView!
    
    @IBOutlet weak var currentMonth: UITextView!
    @IBOutlet weak var titleName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributedString = NSMutableAttributedString(string: "Number of Open source events: 32 \nNumber of Hackathons: 12\n\n")
        numofevents.attributedText = attributedString
        
        
        let currentMonthEvent = NSMutableAttributedString(string: "Open Source Events:  \nGSoC\nKWoC\nGCI\nAlibaba SoC\nHackathons: \nSIH\npycon\n\n")
        
        let attributes0: [NSAttributedString.Key : Any] = [
            .font: UIFont(name: "HelveticaNeue-Bold", size: 15)!
        ]
        attributedString.addAttributes(attributes0, range: NSRange(location: 0, length: 19))
        
        let attributes9: [NSAttributedString.Key : Any] = [
            .font: UIFont(name: "HelveticaNeue-Bold", size: 15)!
        ]
        attributedString.addAttributes(attributes9, range: NSRange(location: 48, length: 12))
        
        currentMonth.attributedText = currentMonthEvent
        
    }
    override func viewDidAppear(_ animated: Bool) {
        titleName.alpha = 0
        fadeViewInThenOut(view: titleName, delay: 0.4)
    }
    func fadeViewInThenOut(view : UIView, delay: TimeInterval) {
        
        let animationDuration = 0.7
        
        // Fade in the view
        UIView.animate(withDuration: animationDuration, animations: { () -> Void in
            view.alpha = 0
        }) { (Bool) -> Void in
            
            // After the animation completes, fade out the view after a delay
            
            UIView.animate(withDuration: animationDuration, delay: delay, options: .curveEaseInOut, animations: { () -> Void in
                view.alpha = 1
            },
                                       completion: nil)
        }
    }
    
    @IBAction func mailButtonPressed(_ sender: UIButton) {
        if let url = URL(string: "mailto:catalystSMVD@hotmail.com") {
            UIApplication.shared.open(url)
        }
    }
    @IBAction func githubButtonPressed(_ sender: UIButton) {
        if let url = URL(string: "https://github.com/Catalyst-SMVD") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func linkedinButtonPressed(_ sender: UIButton) {
        if let url = URL(string: "https://www.linkedin.com/company/catalyst-smvd/") {
            UIApplication.shared.open(url)
        }
    }
}
