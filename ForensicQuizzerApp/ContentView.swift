import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            CategoryListView(categories: SampleData.categories)
                .navigationTitle("Forensic Quizzer")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
