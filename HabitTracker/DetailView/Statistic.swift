//
//  Statistic.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import SwiftUI

struct Statistic: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("cellcolor"))
                .cornerRadius(10)
            VStack {
                VStack {
                    VStack {
                        HStack {
                            Text("Statistic")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.subheadline)
                                .foregroundColor(.white)
                            Spacer()
                            Text("Times a")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.subheadline)
                                .foregroundColor(Color("gray"))
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color("lightgray"))
                                        .frame(width: 70, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(7)
                                    Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                        HStack {
                                            Text("Month")
                                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                                .font(.subheadline)
                                                .foregroundColor(.white)
                                        }
                                    })
                                    
                                }
                                Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(Color("purple"))
                                            .frame(width: 70, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .cornerRadius(7)
                                        HStack {
                                            Text("Year")
                                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                                .font(.subheadline)
                                                .foregroundColor(.white)
                                        }
                                    }
                                })
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
        .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct Statistic_Previews: PreviewProvider {
    static var previews: some View {
        Statistic()
    }
}
