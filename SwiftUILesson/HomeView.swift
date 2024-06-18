//
//  HomeView.swift
//  SwiftUILesson
//
//  Created by Boboev Saddam on 18/06/24.
//

import SwiftUI

struct HomeView: View {
    private let flights = FlightInformation.generateFlights()
    
    private var arrivals: [FlightInformation] {
        flights.filter { $0.direction == .arrival}
    }
    
    private var departures: [FlightInformation] {
        flights.filter { $0.direction == .departure}
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image(systemName: "airplane")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .rotationEffect(Angle(degrees: -90))
                    .opacity(0.1)
                VStack(alignment: .leading, spacing: 10) {
                    NavigationLink("Arrivals") {
                        FlightBoardView(
                            title: "Arrivals",
                            flights: arrivals
                        )
                    }
                    
                    NavigationLink("Departures") {
                        FlightBoardView(
                            title: "Departures",
                            flights: departures
                        )
                    }
                    Spacer()
                }
                .font(.largeTitle)
                .padding()
            }
            .navigationTitle("Airport")
        }
    }
}

#Preview {
    HomeView()
}
