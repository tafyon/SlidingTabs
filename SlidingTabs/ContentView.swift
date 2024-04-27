//
//  ContentView.swift
//  SlidingTabs
//
//  Created by Tamer Afyon on 28.04.2024.
//

import SwiftUI
import SlidingTabView

struct ContentView: View {
    @State private var tabIndex = 0
    var body: some View {
        VStack {
            SlidingTabView(selection: $tabIndex, tabs: ["News","Store"], animation: .easeInOut, activeAccentColor: .green, selectionBarColor: .green)
            Spacer()
            if tabIndex == 0 {
                NewsView()
            } else if tabIndex == 1 {
                StoreView()
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
