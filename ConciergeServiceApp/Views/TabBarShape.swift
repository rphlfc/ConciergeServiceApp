//
//  TabBarShape.swift
//  ConciergeServiceApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TabBarShape: Shape {
    
    // Original shape code
    // https://github.com/Inncoder/SwiftUI-Animations/tree/master/Animations/TabBar
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let widthFactor = rect.maxX/(CGFloat(5) + 1)
        let widthFactorTimesCount = (rect.maxX/(CGFloat(5) + 1)) * 3
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: widthFactorTimesCount + widthFactor, y: rect.minY))
        path.addCurve(to: CGPoint(x: widthFactorTimesCount, y: rect.midY),
                      control1: CGPoint(x: widthFactorTimesCount + 40, y: rect.minY),
                      control2: CGPoint(x: widthFactorTimesCount + 40, y: rect.minY + 50))
        path.addCurve(to: CGPoint(x: widthFactorTimesCount - widthFactor, y: rect.minY),
                      control1: CGPoint(x: widthFactorTimesCount - 40, y: rect.minY + 50),
                      control2: CGPoint(x: widthFactorTimesCount - 40, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - widthFactorTimesCount, y: rect.minY))
        return path
    }
}
