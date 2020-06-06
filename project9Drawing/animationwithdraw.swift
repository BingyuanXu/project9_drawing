//
//  animationwithdraw.swift
//  project9Drawing
//
//  Created by bingyuan xu on 2020-06-06.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct Trapezoid: Shape {
  var insetAmount: CGFloat
  
  
  var animatableData: CGFloat {
    get {self.insetAmount}
    set {self.insetAmount = newValue}
  }
  
  func path(in rect: CGRect) -> Path {
    var path = Path()
    path.move(to: CGPoint(x: 0, y: rect.maxY))
    path.addLine(to: CGPoint(x: insetAmount, y: rect.minY))
    path.addLine(to: CGPoint(x:  rect.maxX - insetAmount, y: rect.minY))
    path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
    path.addLine(to: CGPoint(x: 0, y: rect.maxY))
    
    return path
  }
}

struct animationwithdraw: View {
  @State private var insetAmount: CGFloat = 50

  
  var body: some View {
    Trapezoid(insetAmount: insetAmount)
      .frame(width: 200, height: 100)
     .onTapGesture {
          withAnimation {
              self.insetAmount = CGFloat.random(in: 10...90)
          }
      }
  }
}

struct animationwithdraw_Previews: PreviewProvider {
  static var previews: some View {
    animationwithdraw()
  }
}