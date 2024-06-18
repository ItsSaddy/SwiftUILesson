//
//  FlightDetailView.swift
//  SwiftUILesson
//
//  Created by Boboev Saddam on 18/06/24.
//

import SwiftUI

struct FlightDetailView: View {
    let flight: FlightInformation
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack(spacing: 8) {
            Text("\(flight.airline) - Flight \(flight.number)")
                .font(.title)
            Text("\(flight.direction == .arrival ? "From" : "To") \(flight.otherAirport)")
            
            Text("\(flight.flightStatus)")
                .foregroundStyle(Color(flight.timelineColor))
            Spacer()
            
            Button("Done") {
                isPresented.toggle()
            }
        }
        .padding()
        .font(.headline)
        
    }
}

#Preview {
    FlightDetailView(flight: FlightInformation.generateFlight(), isPresented: .constant(true))
}
