//
//  Card.swift
//  lab3_nd
//
//  Created by Admin on 23.10.2023.
//

import UIKit
protocol CardViewDelegate:AnyObject{
    func selected(sender:Card)
    func unSelected(sender:Card)
}

class Card: NibLoadingView{

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var bottomView: UIView!
    
    weak var delegate: CardViewDelegate?
    
    @IBAction func onClickButton(_ sender: UIButton) {
            if topView.isHidden{
                bottomView.flip(to: topView, animationOption: .transitionFlipFromLeft)
            }
            else{
                topView.flip(to:bottomView, animationOption: .transitionFlipFromRight)
            }
        
    }
    
}

extension UIView{
        func flip(to: UIView, animationOption: UIView.AnimationOptions){
            UIView.transition(from:self, to: to, duration: 0.5, options: [animationOption,.showHideTransitionViews], completion: nil)
        }
    }
    
