//
//  View+Modifier.swift
//  GraphExample
//
//  Created by Md Abdul Gafur on 11/2/24.
//

import Foundation
import SwiftUI

struct BgView:ViewModifier {
    var colorCode:String = ColorSet.colorFFFFFF.rawValue
    func body(content: Content) -> some View {
        content.background(RoundedRectangle(cornerRadius: 20).fill(Color(colorCode)))
    }
}

struct TextSemiBold : ViewModifier {
    var fontSize:CGFloat = 16.0
    var fontColor:String = ColorSet.color282828.rawValue
    func body(content: Content) -> some View {
        content.font(.system(size: fontSize,weight: .semibold)).foregroundColor(Color(fontColor))
    }
}


struct TextMedium : ViewModifier {
    var fontSize:CGFloat = 14.0
    var fontColor:String = ColorSet.color000000.rawValue
    func body(content: Content) -> some View {
        content.font(.system(size: fontSize,weight: .medium)).foregroundColor(Color(fontColor))
    }
}

struct TextRegular : ViewModifier {
    var fontSize:CGFloat = 14.0
    var fontColor:String = ColorSet.color000000.rawValue
    func body(content: Content) -> some View {
        content.font(.system(size: fontSize,weight: .regular)).foregroundColor(Color(fontColor))
    }
}


struct PaddingTop : ViewModifier {
    var paddingValue:PaddingValue = .ten
    func body(content: Content) -> some View {
        content.padding(.top,paddingValue.rawValue)
    }
}

struct Padding : ViewModifier {
    var paddingValue:PaddingValue = .fifteen
    func body(content: Content) -> some View {
        content.padding(paddingValue.rawValue)
    }
}


enum PaddingValue : CGFloat {
    case ten = 10
    case fifteen = 15
}
