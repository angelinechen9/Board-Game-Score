import SwiftUI

struct PlayersView: View {
    @Binding var numPlayers: Int
    
    var body: some View {
        ForEach(0..<numPlayers) { _ in
            PlayerView()
        }
    }
}
