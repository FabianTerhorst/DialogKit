//
//  Dialog.swift
//  DialogKit
//
//  Created by Fabian Terhorst on 17.09.16.
//  Copyright © 2016 everHome. All rights reserved.
//

import LayoutKit

open class Dialog : StackLayout<View> {
    
    open var layout: Layout? = nil

    public init (layout: Layout) {
        
        let header = LabelLayout(
            text: "Title",
            font: UIFont.boldSystemFont(ofSize: 19)
        )
        
        let negativebutton = LabelLayout(
            text: "Disagree",
            font: UIFont.boldSystemFont(ofSize: 16),
            config: { view in
                view.textColor = UIColor(red:0.13, green:0.59, blue:0.95, alpha:1.0)
            }
        )
        
        let positivebutton = LabelLayout(
            text: "Agree",
            font: UIFont.boldSystemFont(ofSize: 16),
            config: { view in
                view.textColor = UIColor(red:0.13, green:0.59, blue:0.95, alpha:1.0)
            }
        )
        
        let footer = StackLayout(
            axis: .horizontal,
            spacing: 4,
            alignment: .bottomTrailing,
            sublayouts: [negativebutton, positivebutton]
        )
        
        super.init(
            axis: .vertical,
            sublayouts: [header, layout, footer],
            config: { view in
                view.backgroundColor = UIColor.white
            }
        )
    }
    
    open func show() {
        if let window = UIApplication.shared.keyWindow {
            
        }
    }
}
