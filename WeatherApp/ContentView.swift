//
//  ContentView.swift
//  WeatherApp
//
//  Created by Russel Corbo on 7/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 60) {
            
        HStack {
            Label("Ronkonkoma, NY", systemImage: "location.circle.fill")
            Spacer()
        }
        HStack(alignment: .center, spacing: 16) {
            Image(systemName: "sun.max.fill")
                .font(.largeTitle)
                .foregroundColor(.yellow)
            Text("87º")
                .font(.largeTitle)
                
                
            }
            
            Text("Sunny and Warm")
                .font(.body)
                .multilineTextAlignment(.center)
            
            Text("H: 89º L: 83º")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            HStack {
                VStack {
                    HStack { // maybe make these buttons?
                        Text("Hourly Forecast")
                        Spacer()
                        Text("Next 7 Days")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                
            VStack {
                MapView()
                    .ignoresSafeArea(edges: .bottom)
                    .frame(height: 300)
                    
                }
                }
                Spacer()
            }
        }
        

        
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
