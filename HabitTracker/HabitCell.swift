//
//  HabitCell.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import SwiftUI

struct HabitCell: View {
    
    var title: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("cellcolor"))
                .cornerRadius(10)
            VStack {
                HStack {
                    Text(title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    HStack {
                        Text("Everyday")
                            .foregroundColor(Color("gray"))
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("purple"))
                    }
                    .padding()
                }
                .padding(.top, 8)
                HStack {
                    ForEach(0 ..< 7) { item in
                        VStack {
                            Text("Mon")
                                .font(.footnote)
                                .foregroundColor(Color("gray"))
                                .padding(6)
                            ZStack {
                                Circle()
                                    .foregroundColor(Color("purple"))
                                    .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("20")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
                .padding(.horizontal, 5)
                .padding(.bottom)
                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.18, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct HabitCell_Previews: PreviewProvider {
    static var previews: some View {
        HabitCell(title: "Meditation")
    }
}
