//
//  AddHabbitButton.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import SwiftUI

struct AddHabbitButton: View {
    
    @EnvironmentObject var states : States
    
    var body: some View {
        Button (action: {
            states.showNewHabbit = true
        }, label: {
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
        })
        .sheet(isPresented: $states.showNewHabbit) {
            NewHabbitView()
        }
    }
}

struct AddHabbitButton_Previews: PreviewProvider {
    static var previews: some View {
        AddHabbitButton()
    }
}
