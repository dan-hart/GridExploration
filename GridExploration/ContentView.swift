//
//  ContentView.swift
//  GridExploration
//
//  Created by Dan Hart on 8/25/23.
//

import SwiftUI

struct ContentView: View {
    let colors = [
        Color.red,
        Color.blue,
        Color.green,
        Color.yellow,
        Color.purple,
        Color.orange,
    ]
    
    var body: some View {
        Grid {
            GridRow(alignment: .top) {
                ColorSquare(color: colors[0])
                    .gridCellColumns(2)
                
                VStack {
                    ColorSquare(color: colors[1])
                    ColorSquare(color: colors[3])
                }
            }
            .frame(height: 400)

            GridRow {
                ColorSquare(color: colors[2])
                ColorSquare(color: colors[4])
                ColorSquare(color: colors[5])
            }
            .frame(height: 200)
        }
        .padding()
    }
}

struct ColorSquare: View {
    let color: Color
        
    var body: some View {
        color
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
