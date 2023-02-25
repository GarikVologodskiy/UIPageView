//
//  PageViewController.swift
//  UIPageView
//
//  Created by Igor Vologodskiy on 25.02.2023.
//

import UIKit

class PageViewController: UIPageViewController {
    
    let presentScreenContent = [
    "The first page of the presentation about app",
    "The second page of he presentation about some feature",
    "The third page of presentation about some interesting",
    "The fourth page of presentation about on a good jorney!"
    ]
    
    let emojiArray = ["🤗", "🤠", "😵‍💫", "🫶"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let contentViewController = showViewControllerAtIndex(0) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }        
    }
    
    func showViewControllerAtIndex (_ index: Int) -> ContentViewController? {
        
        guard index >= 0 else { return nil }
        guard index < presentScreenContent.count else { return nil }
        guard let contentViewController = storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as? ContentViewController else { return nil }
        
        contentViewController.presentText = presentScreenContent[index]
        contentViewController.emoji = emojiArray[index]
        contentViewController.currentPage = index
        contentViewController.numberOfPages = presentScreenContent.count
        
        return contentViewController
    }

}
