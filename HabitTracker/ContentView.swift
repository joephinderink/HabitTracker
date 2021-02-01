//
//  ContentView.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import SwiftUI

// Design from: https://dribbble.com/shots/11109255-Habit-tracking-App/attachments/2709082?mode=media

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color("backgroundcolor")
                .ignoresSafeArea()
            VStack {
                VStack {
                    HStack {
                        Image(systemName: "line.horizontal.3")
                            .resizable()
                            .frame(width: 20, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding()
                        Spacer()
                        Text("Habits")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.trailing, UIScreen.main.bounds.width * 0.43)
                    }
                    .foregroundColor(.white)
                    ForEach(0 ..< 3) { item in
                       HabitCell(title: "Meditation")
                        .padding(8)
                    }
                    HStack {
                        Image(systemName: "plus.square")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("purple"))
                        Text("Add a new habit")
                            .fontWeight(.bold)
                            .foregroundColor(Color("purple"))
                    }
                    .padding()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
