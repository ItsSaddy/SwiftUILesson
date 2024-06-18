//
//  UserProfileView.swift
//  SwiftUILesson
//
//  Created by Boboev Saddam on 18/06/24.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 250, height: 250)
            .opacity(0.1)
    }
}

#Preview {
    UserProfileView()
}
