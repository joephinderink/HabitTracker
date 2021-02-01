//
//  CalendarTrackingView.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import SwiftUI

struct CalendarTrackingView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("cellcolor"))
                .cornerRadius(10)
            VStack {
                VStack {
                    VStack {
                        HStack {
                            Text("History")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.subheadline)
                                .foregroundColor(.white)
                            Spacer()
                            Text("Drag to see more")
                                .font(.subheadline)
                                .foregroundColor(Color("gray"))
                            
                        }
                        .padding(.bottom, 5)
                        Rectangle()
                            .foregroundColor(Color("gray"))
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding()
                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct CalendarTrackingView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarTrackingView()
    }
}
