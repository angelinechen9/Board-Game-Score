import SwiftUI

struct ContentView: View {
    @State var numPlayers: Int
    
    var body: some View {
        NavigationStack {
            Text("Number of Players")
            TextField("", value: $numPlayers, format: .number)
                .keyboardType(.numberPad)
                .multilineTextAlignment(.center)
                .fixedSize()
                .textFieldStyle(.roundedBorder)
            NavigationLink(
                destination: PlayersView(numPlayers: $numPlayers),
                label: {
                    Text("Calculate Score")
                }
            )
            .buttonStyle(.borderedProminent)
        }
    }
}
