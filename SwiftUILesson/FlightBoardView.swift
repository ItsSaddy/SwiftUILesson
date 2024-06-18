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
    
    var body: some View {
        List(flights, id: \.self) { flight in
            FlightRowView(flight: flight)
        }
        .listStyle(.plain)
        .navigationTitle(title)
    }
}

#Preview {
    FlightBoardView(
        title: "Board Title",
        flights: FlightInformation.generateFlights()
    )
}
