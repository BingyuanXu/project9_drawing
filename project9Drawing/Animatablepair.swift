//
//  Animatablepair.swift
//  project9Drawing
//
//  Created by bingyuan xu on 2020-06-06.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct CheckerBoard: Shape {
  var rows: Int
  var columns: Int
  
  public var animatableData: AnimatablePair<Double, Double> {
    get {
      AnimatablePair(Double(rows), Double(columns))
    }
    
    set {
      self.rows = Int(newValue.first)
      self.columns = Int(newValue.second)
    }
  }
  
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let rowSize = rect.height / CGFloat(self.rows)
    let columSize = rect.width / CGFloat(self.columns)
    
    for row in 0..<rows {
      for column in 0..<columns {
        if (row + column).isMultiple(of: 2) {
          let startX = columSize * CGFloat(column)
          let startY = rowSize * CGFloat(row)
          let rect = CGRect(x: startX, y: startY, width: columSize, height: rowSize)
          path.addRect(rect)
          
        }
      }
    }
    
    return path
  }
}

struct Animatablepair: View {
  @State private var rows = 4
  @State private var columns = 4
  
  var body: some View {
    CheckerBoard(rows: rows, columns: columns)
   
      .onTapGesture {
        withAnimation(.linear(duration: 2)) {
          self.rows = 8
          self.columns = 16
        }
        
      
    }

  }
}



struct Animatablepair_Previews: PreviewProvider {
  static var previews: some View {
    Animatablepair()
  }
}
