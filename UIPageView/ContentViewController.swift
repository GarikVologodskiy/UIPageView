//
//  ContentViewController.swift
//  UIPageView
//
//  Created by Igor Vologodskiy on 25.02.2023.
//

import UIKit

class ContentViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var presentTextLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var presentText = ""
    var emoji = ""
    var currentPage = 0 // number of current page
    var numberOfPages = 0 //number of pages
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentTextLabel.text = presentText
        emojiLabel.text = emoji
        pageControl.numberOfPages = numberOfPages
        pageControl.currentPage = currentPage

    }
}
