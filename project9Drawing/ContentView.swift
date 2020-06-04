//
//  ContentView.swift
//  project9Drawing
//
//  Created by bingyuan xu on 2020-06-02.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
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
        
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
