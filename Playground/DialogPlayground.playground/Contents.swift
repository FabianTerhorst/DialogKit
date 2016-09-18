//: Playground - noun: a place where people can play

import UIKit
import DialogKit
import LayoutKit

var str = "Hello, playground"

var layout = LabelLayout(text: "test", font: UIFont.systemFont(ofSize: 14))

let dialog = Dialog(layout: layout)

dialog.arrangement(width: 300).makeViews()