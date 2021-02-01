//
//  Frequency.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import SwiftUI

struct Frequency: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("cellcolor"))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.07, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
        HStack {
            Text("Frequency")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.subheadline)
                .foregroundColor(.white)
            Text("Times a week:")
                .font(.subheadline)
                .foregroundColor(Color("gray"))
            Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("purple"))
                        .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(7)
                    Image(systemName: "minus")
                        .foregroundColor(.white)
                }
            })
            
            Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("lightgray"))
                        .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(7)
                }
            })
            
            Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("purple"))
                        .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(7)
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                }
            })
        }
        }
    }
}

struct Frequency_Previews: PreviewProvider {
    static var previews: some View {
        Frequency()
    }
}
