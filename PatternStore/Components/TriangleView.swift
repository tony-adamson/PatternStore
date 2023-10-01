//
//  TriangleView.swift
//  PatternStore
//
//  Created by Антон Адамсон on 01.10.2023.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Определяем точки треугольника
        let topPoint = CGPoint(x: rect.maxX, y: rect.minY)
        let bottomLeftPoint = CGPoint(x: rect.minX, y: rect.maxY)
        let bottomRightPoint = CGPoint(x: rect.maxX, y: rect.maxY)
        
        // Строим треугольник
        path.move(to: topPoint)
        path.addLine(to: bottomLeftPoint)
        path.addLine(to: bottomRightPoint)
        path.closeSubpath()
        
        return path
    }
}

