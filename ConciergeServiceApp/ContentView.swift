//
//  ContentView.swift
//  ConciergeServiceApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.8950729966, green: 0.9553288817, blue: 0.9278293848, alpha: 1)).edgesIgnoringSafeArea(.top)
            
            ZStack {
                VStack(alignment: .leading) {
                    NavigationView()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading) {
                            WelcomeView()
                                .padding(.top, 16)
                            
                            WeatherView()
                            
                            CardView()
                                .padding(.top)
                        }
                    }
                }
                .padding(.horizontal)
                
                TabBarView()
                    .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 0)
                    .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
