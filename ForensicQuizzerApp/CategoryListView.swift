import SwiftUI

struct CategoryListView: View {
    let categories: [Category]

    var body: some View {
        List(categories) { category in
            NavigationLink(destination: QuizView(category: category)) {
                Text(category.name)
            }
        }
    }
}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView(categories: SampleData.categories)
    }
}
