//
//  ContentView.swift
//  SwiftUILesson
//
//  Created by Boboev Saddam on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedLightIndex: Int?
    
    var body: some View {
        VStack {
            VStack {
                Circle()
                    .foregroundStyle(.red.opacity(selectedLightIndex == 0 ? 1 : 0.5))
                    .frame(width: 125)
                    .overlay(Circle().stroke(Color.black, lineWidth: 6))
                
                Circle()
                    .foregroundStyle(.yellow.opacity(selectedLightIndex == 1 ? 1 : 0.5))
                    .frame(width: 125)
                    .overlay(Circle().stroke(Color.black, lineWidth: 6))
                
                Circle()
                    .foregroundStyle(.green.opacity(selectedLightIndex == 2 ? 1 : 0.5))
                    .frame(width: 125)
                    .overlay(Circle().stroke(Color.black, lineWidth: 6))
            }
            .padding()
            Spacer()
        }
        
        Button(selectedLightIndex == nil ? "Start" : "Next") {
            guard var selectedLightIndex = selectedLightIndex else {
                selectedLightIndex = 0
                return
            }
            
            selectedLightIndex = (selectedLightIndex + 1) % 3
            
            self.selectedLightIndex = selectedLightIndex
        }
        .padding()
        .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
