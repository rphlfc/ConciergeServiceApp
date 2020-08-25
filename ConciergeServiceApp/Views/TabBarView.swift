//
//  TabBarView.swift
//  ConciergeServiceApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    let items = ["house.fill", "checkmark.square.fill", "plus", "bell.fill", "person.fill"]
    @State var selectedItem = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                TabBarShape()
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width, height: 100)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    ForEach(0..<self.items.count) { i in
                        ItemView(selectedItem: self.$selectedItem, imageName: self.items[i], index: i)
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ItemView: View {
    @Binding var selectedItem: Int
    var imageName: String
    var index: Int
    
    var body: some View {
        Button(action: {
            if self.index != 2 {
                self.selectedItem = self.index
            }
        }) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28)
                .padding(20)
                .background(self.index == 2 ? Color(#colorLiteral(red: 0.9830762744, green: 0.54526788, blue: 0.3901008964, alpha: 1)) : Color.clear)
                .foregroundColor(self.index == 2 ? .white : self.selectedItem == index ? Color(#colorLiteral(red: 0.9830762744, green: 0.54526788, blue: 0.3901008964, alpha: 1)) : Color(#colorLiteral(red: 0.5772771239, green: 0.7180386186, blue: 0.7026559711, alpha: 1)))
                .cornerRadius(35)
                .offset(y: self.index == 2 ? -50 : 0)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .background(Color.gray)
    }
}
