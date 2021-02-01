//
//  DetailHabitView.swift
//  HabitTracker
//
//  Created by Joep Hinderink on 01/02/2021.
//

import SwiftUI

struct DetailHabitView: View {
    
    @EnvironmentObject var states : States
    
    var body: some View {
        ZStack {
            Color("backgroundcolor")
                .ignoresSafeArea()
            VStack {
                TitleDetailView()
                Frequency()
                Reminder()
                CalendarTrackingView()
                Statistic()
                Spacer()
            }
        }
    }
}

struct DetailHabitView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHabitView()
    }
}
