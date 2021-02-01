//
//  TitleDetailView.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import SwiftUI

struct TitleDetailView: View {
    
    @EnvironmentObject var states : States
    
    var body: some View {
        HStack {
            Button (action: {
                withAnimation {
                    states.showDetailView = false
                }
            }, label: {
                HStack {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .frame(width: 7, height: 12, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("gray"))
                        .padding(.trailing, 4)
                    Text("Meditation")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    //                            Text("\(states.offset.width)")
                }
                .padding()
            })
            Spacer()
        }
    }
}

struct TitleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TitleDetailView()
    }
}
