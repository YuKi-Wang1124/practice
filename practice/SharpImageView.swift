//
//  SharpImageView.swift
//  SharpImageView
//
//  Created by 王昱淇 on 2021/8/12.
//

import UIKit

class SharpImageView: UIImageView {

    override func layoutSubviews() {
       super.layoutSubviews()
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 0, y: 30))
        path.addQuadCurve(to: CGPoint(x: 30, y: 0), controlPoint: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 110, y: 0))
        path.addQuadCurve(to: CGPoint(x: bounds.width, y: 30), controlPoint: CGPoint(x: bounds.width, y: 0))
        path.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
        path.addLine(to: CGPoint(x: 30, y: bounds.height))
        path.addQuadCurve(to: CGPoint(x: 0, y: 110), controlPoint: CGPoint(x: 0, y: bounds.height))
        path.close()
        
       let shapeLayer = CAShapeLayer()
       shapeLayer.path = path.cgPath
       layer.mask = shapeLayer
    }

}
