//
//  NavigationView.swift
//  ConciergeServiceApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                HStack {
                    Image(systemName: "house")
                    
                    Image(systemName: "chevron.down")
                }
                .foregroundColor(.white)
                .padding()
                .background(Color(#colorLiteral(red: 0.1943463385, green: 0.4934232235, blue: 0.4462659955, alpha: 1)))
                .cornerRadius(10)
            }
            
            Spacer()
            
            Button(action: {
                
            }) {
                Image(systemName: "info.circle.fill")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(#colorLiteral(red: 1, green: 0.5307204723, blue: 0.400138557, alpha: 1)))
                    .cornerRadius(10)
            }
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
