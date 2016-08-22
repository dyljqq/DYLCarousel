//
//  ViewController.swift
//  DYLCarousel
//
//  Created by 季勤强 on 16/8/19.
//  Copyright © 2016年 季勤强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carouselView: DYLCarousel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        carouselView.delegate = self
        carouselView.datasource = self
        carouselView.selectedIndex = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: DYLCarouselDatasource {
    func numOfItemsInCarousel(carousel: DYLCarousel) -> Int {
        return 5
    }
    
    func viewForItemInCarousel(index: Int, carousel: DYLCarousel) -> DYLCarouselItem {
        let ratio: CGFloat = view.frame.width / 375.0
        return CustomView(frame: CGRectMake(0, 0, 300 * ratio, 150 * ratio), number: "\(index + 1)")
    }
}

extension ViewController: DYLCarouselDelegate {
    func didMoveToItemAtIndex(index: Int) {
        print("move: \(index)")
    }
    
    func didTapItemAtIndex(carouselView: DYLCarousel, index: Int) {
        print("tapped: \(index)")
    }
}
