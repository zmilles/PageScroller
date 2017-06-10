//
//  ViewController.swift
//  PageScroller
//
//  Created by Zack Milles on 6/9/17.
//  Copyright © 2017 Zack Milles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = Array<UIImageView>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth: CGFloat = 0.0
        view.addGestureRecognizer(scrollView.panGestureRecognizer)
        
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = (scrollView.frame.size.width/2 +
                scrollView.frame.size.width * CGFloat(x))
            
            contentWidth += scrollView.frame.size.width
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height/2)
                - 75, width: 150, height: 150)
        }
        
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

}

