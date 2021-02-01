//
//  TitleHomeScreen.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import SwiftUI

struct TitleHomeScreen: View {
    var body: some View {
        HStack {
            Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 20, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
            })
            Spacer()
            //                                                Text("\(states.offset.width)")
            Text("Habits")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.trailing, UIScreen.main.bounds.width * 0.43)
        }
        .foregroundColor(.white)
    }
}

struct TitleHomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        TitleHomeScreen()
    }
}
