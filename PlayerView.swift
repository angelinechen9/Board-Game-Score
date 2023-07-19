import SwiftUI

struct PlayerView: View {
    @State var player = ""
    @State var score = 0
    @State var value = ""
    @State var values = ["0"]
    
    var body: some View {
        HStack {
            TextField("Player", text: $player)
                .multilineTextAlignment(.center)
                .fixedSize()
                .textFieldStyle(.roundedBorder)
            Text("Score: \(values.joined())=\(score)")
            Button(action: {
                score += Int(value) ?? 0
                if value != "" {
                    values.append("+\(value)")
                }
                value = ""
            }, label: {
                Text("+")
            })
            .buttonStyle(.borderedProminent)
            .clipShape(Circle())
            Button(action: {
                score -= Int(value) ?? 0
                if value != "" {
                    values.append("-\(value)")
                }
                value = ""
            }, label: {
                Text("-")
            })
            .buttonStyle(.borderedProminent)
            .clipShape(Circle())
            TextField("", text: $value)
                .keyboardType(.numberPad)
                .multilineTextAlignment(.center)
                .fixedSize()
                .textFieldStyle(.roundedBorder)
        }
    }
}
