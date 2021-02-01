//
//  ContentView.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import SwiftUI

// Design from: https://dribbble.com/shots/11109255-Habit-tracking-App/attachments/2709082?mode=media

struct ContentView: View {
    
    @EnvironmentObject var states : States
    
    var body: some View {
        ZStack {
            Color("backgroundcolor")
                .zIndex(0)
                .ignoresSafeArea()
            VStack {
                VStack {
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
                    ForEach(0 ..< 3) { item in
                        HabitCell(title: "Meditation")
                        //                            .padding(8)
                    }
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
                Spacer()
            }
            .blur(radius: states.showDetailView ? 1 : 0)
            if states.showDetailView {
                DetailHabitView()
                    .offset(x: states.offset.width, y: 0)
                    .transition(.move(edge: .trailing))
                    .animation(.easeInOut(duration: 0.3))
                    .zIndex(2)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                self.states.offset = gesture.translation
                            }
                            
                            .onEnded { _ in
                                if states.offset.width >= 120 {
                                    states.showDetailView = false
                                    self.states.offset = .zero
                                } else if states.offset.width == 0 {
                                    states.showDetailView = true
                                }
                                else {
                                    states.showDetailView = true
                                    self.states.offset = .zero
                                }
                            }
                    )
            }
            if states.showDetailView {
                Color("backgroundcolor")
                    .offset(x: states.offset.width + 330)
                    .ignoresSafeArea()
                    .animation(.default)
                VStack {
                    Image("man")
                        .offset(x: states.offset.width + 350)
                        .animation(.default)
                    Text("You found me:)")
                        .fontWeight(.heavy)
                        .offset(x: states.offset.width + 350)
                        .foregroundColor(.white)
                        .animation(.default)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(States())
            .previewDevice("iPhone 8")
        ContentView()
            .environmentObject(States())
            .previewDevice("iPhone 12")
    }
}
