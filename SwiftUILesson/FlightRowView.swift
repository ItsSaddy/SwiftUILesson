//
//  FlightRowView.swift
//  SwiftUILesson
//
//  Created by Boboev Saddam on 18/06/24.
//

import SwiftUI

struct FlightRowView: View {
    let flight: FlightInformation
    @State private var isPresented = false
    
    var body: some View {
        Button(action: { isPresented.toggle() }) {
            HStack {
                Text("\(flight.airline) \(flight.number)")
                    .frame(width: 120, alignment: .leading)
                
                Text("\(flight.otherAirport)")
                    .frame(alignment: .leading)
                
                Spacer()
                
                Text(flight.flightStatus)
            }
        }
        .sheet(isPresented: $isPresented) {
            FlightDetailView(flight: flight, isPresented: $isPresented)
        }
    }
}

#Preview {
    FlightRowView(flight: FlightInformation.generateFlight())
}
