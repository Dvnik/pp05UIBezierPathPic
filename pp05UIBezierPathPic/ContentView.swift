//
//  ContentView.swift
//  pp05UIBezierPathPic
//
//  Created by Trixie Lulamoon on 2020/11/28.
//

import SwiftUI
struct DrawView: UIViewRepresentable
{
    func makeUIView(context: Context) -> UIView
    {
        let view = UIView()
        // Basic Head
        var path = UIBezierPath()
        path.move(to: CGPoint(x: 1, y: 16))
        path.addQuadCurve(to: CGPoint(x: 20, y: 63), controlPoint: CGPoint(x: 17, y: 42))
        path.addLine(to: CGPoint(x: 18, y: 70))
        path.addQuadCurve(to: CGPoint(x: 7, y: 74), controlPoint: CGPoint(x: 13, y: 70))
        path.addLine(to: CGPoint(x: 13, y: 79))
        path.addLine(to: CGPoint(x: 7, y: 78))
        path.addQuadCurve(to: CGPoint(x: 56, y: 97), controlPoint: CGPoint(x: 23, y: 94))
        path.addQuadCurve(to: CGPoint(x: 107, y: 83), controlPoint: CGPoint(x: 79, y: 99))
        path.addLine(to: CGPoint(x: 101, y: 83))
        path.addLine(to: CGPoint(x: 106, y: 80))
        path.addQuadCurve(to: CGPoint(x: 98, y: 76), controlPoint: CGPoint(x: 103, y: 76))
        path.addQuadCurve(to: CGPoint(x: 95, y: 68), controlPoint: CGPoint(x: 97, y: 71))
        path.addQuadCurve(to: CGPoint(x: 83, y: 13), controlPoint: CGPoint(x: 95, y: 24))
        path.addLine(to: CGPoint(x: 83, y: 18))
        path.addLine(to: CGPoint(x: 78, y: 11))
        path.addQuadCurve(to: CGPoint(x: 60, y: 42), controlPoint: CGPoint(x: 72, y: 31))
        path.addQuadCurve(to: CGPoint(x: 2, y: 11), controlPoint: CGPoint(x: 46, y: 21))
        path.addLine(to: CGPoint(x: 6, y: 17))
        path.close()
        // add path to head layer
        let headLayer = CAShapeLayer()
        headLayer.path = path.cgPath
        headLayer.fillColor = CGColor(srgbRed: 222/255, green: 96/255, blue: 55/255, alpha: 1)
        view.layer.addSublayer(headLayer)
        // hair paths
        path = UIBezierPath()
        // left
        path.move(to: CGPoint(x: 46, y: 61))
        path.addLine(to: CGPoint(x: 60, y: 63))
        path.addQuadCurve(to: CGPoint(x: 58, y: 69), controlPoint: CGPoint(x: 62, y: 66))
        path.addLine(to: CGPoint(x: 45, y: 67))
        path.addQuadCurve(to: CGPoint(x: 46, y: 61), controlPoint: CGPoint(x: 43, y: 63))
        path.close()
        // right
        path.move(to: CGPoint(x: 78, y: 61))
        path.addLine(to: CGPoint(x: 91, y: 58))
        path.addQuadCurve(to: CGPoint(x: 89, y: 65), controlPoint: CGPoint(x: 95, y: 65))
        path.addLine(to: CGPoint(x: 79, y: 67))
        path.addQuadCurve(to: CGPoint(x: 78, y: 61), controlPoint: CGPoint(x: 76, y: 65))
        path.close()
        // bottom
        path.move(to: CGPoint(x: 30, y: 87))
        path.addQuadCurve(to: CGPoint(x: 84, y: 88), controlPoint: CGPoint(x: 44, y: 75))
        path.addQuadCurve(to: CGPoint(x: 99, y: 83), controlPoint: CGPoint(x: 92, y: 76))
        path.addQuadCurve(to: CGPoint(x: 66, y: 97), controlPoint: CGPoint(x: 96, y: 94))
        path.addQuadCurve(to: CGPoint(x: 30, y: 87), controlPoint: CGPoint(x: 36, y: 97))
        path.close()
        
        // add path to hairlayer
        let hairLayer = CAShapeLayer()
        hairLayer.path = path.cgPath
        hairLayer.fillColor = CGColor(srgbRed: 255/255, green: 247/255, blue: 228/255, alpha: 1)
        view.layer.addSublayer(hairLayer)
        // eye,nose paths
        path = UIBezierPath()
        // eye left
        path.addArc(withCenter: CGPoint(x: 52, y: 73), radius: 5, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 180, clockwise: true)
        // eye right
        path.addArc(withCenter: CGPoint(x: 86, y: 71), radius: 5, startAngle: CGFloat.pi * 0, endAngle: CGFloat.pi * 180, clockwise: true)
        // nose
        path.move(to: CGPoint(x: 82, y: 92))
        path.addLine(to: CGPoint(x: 76, y: 89))
        path.addQuadCurve(to: CGPoint(x: 86, y: 88), controlPoint: CGPoint(x: 80, y: 80))
        path.addLine(to: CGPoint(x: 82, y: 92))
        path.close()
        
        // add path to eyeLayer
        let eyeLayer = CAShapeLayer()
        eyeLayer.path = path.cgPath
        eyeLayer.fillColor = CGColor(srgbRed: 34/255, green: 31/255, blue: 31/255, alpha: 1)
        view.layer.addSublayer(eyeLayer)
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context)
    {
        
    }
    
}
struct ContentView: View
{
    var body: some View
    {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
