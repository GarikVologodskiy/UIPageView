//
//  ViewController.swift
//  UIPageView
//
//  Created by Igor Vologodskiy on 25.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startPresentation()
    }
    
    func startPresentation() {
        if let pageViewController = storyboard?.instantiateViewController(
            withIdentifier: "PageViewController") as? PageViewController {
            
            present(pageViewController, animated: true, completion: nil)
        }
    }
}
