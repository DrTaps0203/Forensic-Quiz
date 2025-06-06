import SwiftUI

struct QuizView: View {
    let category: Category
    @State private var currentIndex: Int = 0
    @State private var selectedIndex: Int? = nil
    @State private var showExplanation: Bool = false

    var body: some View {
        if currentIndex < category.questions.count {
            let question = category.questions[currentIndex]
            VStack(alignment: .leading, spacing: 20) {
                Text(question.text)
                    .font(.title3)
                    .bold()
                ForEach(question.options.indices, id: \.self) { index in
                    Button(action: {
                        selectedIndex = index
                        showExplanation = true
                    }) {
                        HStack {
                            Text(question.options[index])
                                .foregroundColor(.primary)
                            Spacer()
                        }
                    }
                    .padding()
                    .background(selectedIndex == index && showExplanation ? (index == question.correctIndex ? Color.green.opacity(0.3) : Color.red.opacity(0.3)) : Color.clear)
                    .cornerRadius(8)
                }
                if showExplanation {
                    Text(question.explanation)
                        .padding()
                        .background(Color.yellow.opacity(0.3))
                        .cornerRadius(8)
                    Button("Next") {
                        currentIndex += 1
                        selectedIndex = nil
                        showExplanation = false
                    }
                    .padding(.top, 10)
                }
                Spacer()
            }
            .padding()
            .navigationTitle(category.name)
        } else {
            Text("Quiz Completed!")
                .font(.title)
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(category: SampleData.categories.first!)
    }
}
