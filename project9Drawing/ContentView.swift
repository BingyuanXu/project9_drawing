//
//  ContentView.swift
//  project9Drawing
//
//  Created by bingyuan xu on 2020-06-02.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct Triangle: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    
    path.move(to: CGPoint(x: rect.midX, y: rect.minY))
    path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
    path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
    path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
    return path
  }
}

struct Arc: Shape {
  var startAngle: Angle
  var endAngle: Angle
  var clockwise: Bool
  
  func path(in rect: CGRect) -> Path {
    let rotationAdjustment = Angle.degrees(90)
    let modifiedStart = startAngle - rotationAdjustment
    let modifiedEnd = endAngle - rotationAdjustment
    
    var path = Path()
    path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
    
    return path
  }
}

struct ContentView: View {
  var body: some View {
    VStack {
      Arc(startAngle: Angle.degrees(90), endAngle: .degrees(0), clockwise: true)
        .frame(width: 100,height: 100)
      
      Triangle()
        .fill(Color.red)
        .frame(width: 100, height: 100)
      
      Triangle()
        .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
        .frame(width: 100, height: 100)
      
      Text("Hello, World!")
      Path { path in
        path.move(to: CGPoint(x: 200, y: 100))
        path.addLine(to: CGPoint(x: 100, y: 300))
        path.addLine(to: CGPoint(x: 300, y: 300))
        path.addLine(to: CGPoint(x: 200, y: 100))
      }
        //        .fill(Color.blue)
        .stroke(Color.blue.opacity(0.5),
                style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round)
      )
        .scaleEffect(0.5)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
