//
//  FxBasePage.swift
//  Tennis
//
//  Created by haiki on 1/18/17.
//  Copyright © 2017 haiki. All rights reserved.
//

import UIKit

class FxBasePage: FxBaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setNavigationItem(title:String, selector: Selector, isRight:Bool){
        var item :UIBarButtonItem!
        if title.hasSuffix("png"){
            item = UIBarButtonItem(image: UIImage(named : title), style: .plain, target: self, action: selector)
        }
        else{
            item = UIBarButtonItem(title: title, style: .plain, target: self, action: selector)
        }
        item.tintColor = UIColor.darkGray;
        if isRight{
            self.navigationItem.rightBarButtonItem = item
        }
        else{
            self.navigationItem.leftBarButtonItem = item
        }
    }
    func doRight(){
        
    }
    func doBack(){
        self.dismiss(animated: true, completion: nil)
    };
    

}
