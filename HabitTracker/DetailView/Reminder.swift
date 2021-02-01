//
//  Reminder.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import SwiftUI

struct Reminder: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("cellcolor"))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.07, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
            HStack {
                Text("Reminder")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(.trailing, 21)
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("lightgray"))
                        .frame(width: 90, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(7)
                    Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack {
                            Image(systemName: "bell")
                                .resizable()
                                .frame(width: 20, height: 23, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color("purple"))
                            Text("16:00")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                    })
                    
                }
                Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("lightgray"))
                            .frame(width: 70, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(7)
                        HStack {
                            Text("Once")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                    }
                })
                
                ZStack {
                    Capsule()
                        .foregroundColor(Color("purple"))
                        .opacity(0.3)
                        .frame(width: 35, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Circle()
                        .foregroundColor(Color("purple"))
                        .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

struct Reminder_Previews: PreviewProvider {
    static var previews: some View {
        Reminder()
    }
}
