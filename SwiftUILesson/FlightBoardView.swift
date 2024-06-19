//
//  FlightBoardView.swift
//  SwiftUILesson
//
//  Created by Boboev Saddam on 18/06/24.
//

import SwiftUI

struct FlightBoardView: View {
    let title: String
    let flights: [FlightInformation]
    
    @State private var hiddenCanceled = false
    
    private var shownFlights: [FlightInformation] {
        hiddenCanceled
            ? flights.filter( {$0.status != .cancelled })
            : flights
    }
    
    var body: some View {
        List(shownFlights, id: \.self) { flight in
            FlightRowView(flight: flight)
        }
        .listStyle(.plain)
        .navigationTitle(title)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Toggle("Hide canceled", isOn: $hiddenCanceled)
            }
        }
    }
}

#Preview {
    FlightBoardView(
        title: "Board Title",
        flights: FlightInformation.generateFlights()
    )
}
