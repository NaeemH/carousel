//
//  ViewController.swift
//  carousel
//
//  Created by Naeem on 6/20/16.
//  Copyright © 2016 Naeem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, iCarouselDelegate, iCarouselDataSource {

    var numbers = [Int]()
    
    
    /*
    var gameImages: UIImage = [
        UIImage(named: "zelda")!,
        UIImage(named: "pokemon")!,
        UIImage(named: "mario")!,
        UIImage(named: "rdr")!,
        UIImage(named: "cod")!,
        UIImage(named: "minecraft")!
    ]
    */
    
    @IBOutlet var carouselView: iCarousel!
    
    //Where numbers will load as soon as app loads
    override func awakeFromNib() {
        super.awakeFromNib()
        numbers = [1,2,3,4,5,6]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //carouselView.type = .coverFlow
        carouselView.type = .invertedTimeMachine
    }
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        
     return numbers.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        
        let tempView = UIView(frame: CGRect (x: 0, y: 0, width: 200, height: 200))
        //tempView.backgroundColor = UIColor.black()
        
        //HOW TO ADD SOMETHING TO THE VIEW
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        button.setTitle("\(index)", for: .application) //, for: .normal
        button.backgroundColor = UIColor.blue()
        tempView.addSubview(button)
        
        return tempView
    }
    
    func carousel(_ carousel: iCarousel, valueFor option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        //options to edit carousels spacing
        if option == iCarouselOption.spacing{
            
            return value * 1.2
        }
        return value
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

