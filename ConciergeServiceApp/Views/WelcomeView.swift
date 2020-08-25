//
//  WelcomeView.swift
//  ConciergeServiceApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Hello,")
                .font(.system(size: 32, weight: .medium, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.2362820506, green: 0.3285508752, blue: 0.2964383662, alpha: 1)))
            
            Text("Ariel Norman")
                .font(.system(size: 32, weight: .black))
                .foregroundColor(Color(#colorLiteral(red: 0.07398187369, green: 0.2113656402, blue: 0.1790709794, alpha: 1)))
            
            Text("Mon, 14 Aug")
                .font(.system(size: 18))
                .foregroundColor(Color(#colorLiteral(red: 0.2376855314, green: 0.3243593872, blue: 0.3011164665, alpha: 1)))
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
