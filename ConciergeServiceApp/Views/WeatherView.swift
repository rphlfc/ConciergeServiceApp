//
//  WeatherView.swift
//  ConciergeServiceApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer().frame(height: 30)
                
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("26º")
                            .font(.system(size: 48))
                        
                        Text("Partly cloudy")
                            .font(.system(size: 16, weight: .bold))
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.07398187369, green: 0.2113656402, blue: 0.1790709794, alpha: 1)))
                    
                    Spacer()
                }
                .padding(24)
                .background(Color(#colorLiteral(red: 0.8109351993, green: 0.9014502168, blue: 0.8647220731, alpha: 1)))
                .cornerRadius(20)
            }
            
            ZStack {
                HStack {
                    Spacer()
                    
                    ZStack {
                        Circle()
                            .frame(width: 140, height: 140)
                            .foregroundColor(Color(#colorLiteral(red: 0.9989371896, green: 0.8233184218, blue: 0.0146325184, alpha: 1)))
                            .offset(x: 10, y: -38)
                        
                        Image(systemName: "cloud.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 40)
                    .offset(y: 28)
                }
            }
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
