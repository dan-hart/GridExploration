//
//  PortraitLayout.swift
//  GridExploration
//
//  Created by Dan Hart on 8/25/23.
//

import SwiftUI

struct PortraitLayout: View {
    let colors = [
        Color.red,
        Color.blue,
        Color.green,
        Color.yellow,
        Color.purple,
        Color.orange,
    ]
    
    var body: some View {
        GeometryReader { geometry in
            Grid {
                GridRow(alignment: .top) {
                    ColorSquare(color: colors[0])
                        .gridCellColumns(2)
                    
                    VStack {
                        ColorSquare(color: colors[1])
                        ColorSquare(color: colors[3])
                    }
                }
                .frame(height: geometry.size.height / 2)
                
                GridRow {
                    ColorSquare(color: colors[2])
                    ColorSquare(color: colors[4])
                    ColorSquare(color: colors[5])
                }
                .frame(height: geometry.size.height / 4)
            }
            .padding()
        }
    }
}

struct LandscapeLayout: View {
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
                    VStack {
                        ColorSquare(color: colors[1])
                        ColorSquare(color: colors[3])
                    }
                    
                    VStack {
                        ColorSquare(color: colors[5])
                        ColorSquare(color: colors[0])
                    }
                    
                    VStack {
                        ColorSquare(color: colors[2])
                        ColorSquare(color: colors[4])
                    }
                }
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
        Group {
            PortraitLayout()
                .previewDisplayName("Portrait")
            LandscapeLayout()
                .previewDisplayName("Landscape")
        }
    }
}
