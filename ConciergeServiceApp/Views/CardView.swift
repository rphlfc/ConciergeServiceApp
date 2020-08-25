//
//  CardView.swift
//  ConciergeServiceApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Latest news")
                    .font(.system(size: 24, weight: .black))
                
                Spacer()
                
                ZStack(alignment: .topTrailing) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "slider.horizontal.3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 20)
                    }
                    
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundColor(Color(#colorLiteral(red: 0.9499189258, green: 0.4223896563, blue: 0.2497529387, alpha: 1)))
                        .shadow(color: Color(#colorLiteral(red: 0.9499189258, green: 0.4223896563, blue: 0.2497529387, alpha: 1)), radius: 4, x: 0, y: 0)
                        .offset(y: -4)
                }
            }
            .foregroundColor(Color(#colorLiteral(red: 0.07398187369, green: 0.2113656402, blue: 0.1790709794, alpha: 1)))
            
            Image("saintmary")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 240)
                .cornerRadius(20)
            
            Text("Fundraising for roof repairs")
                .font(.system(size: 22, weight: .black))
                .foregroundColor(Color(#colorLiteral(red: 0.07398187369, green: 0.2113656402, blue: 0.1790709794, alpha: 1)))
                .padding(.top)
            
            HStack {
                Button(action: {
                    
                }) {
                    Text("Important")
                        .fontWeight(.heavy)
                        .padding()
                        .foregroundColor(Color(#colorLiteral(red: 0.9499189258, green: 0.4223896563, blue: 0.2497529387, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.9951344132, green: 0.923817575, blue: 0.8808630109, alpha: 1)))
                        .cornerRadius(10)
                }
                
                Text("2h ago")
                    .padding(.leading)
                    .foregroundColor(Color(#colorLiteral(red: 0.4314487576, green: 0.4961724281, blue: 0.4906778336, alpha: 1)))
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "person.crop.circle.badge.plus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 25)
                        .foregroundColor(Color(#colorLiteral(red: 0.7190399766, green: 0.7987918258, blue: 0.7842149138, alpha: 1)))
                }
            }
            
            Spacer()
                .frame(height: 100)
        }
        .padding(.vertical, 24)
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
