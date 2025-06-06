import Foundation

struct SampleData {
    static let categories: [Category] = [
        Category(name: "Toxicology", questions: [
            Question(
                text: "Which compound is commonly used to detect the presence of alcohol?",
                options: ["Iodoform", "Duquenois", "Chromatography", "Spectrophotometry"],
                correctIndex: 3,
                explanation: "Spectrophotometry measures the absorption of light by alcohol in a sample.",
                category: "Toxicology"),
            Question(
                text: "What is the role of a toxicologist in forensic investigation?",
                options: ["Examine fingerprints", "Analyze bodily fluids for chemicals", "Study bullet trajectories", "Estimate time of death"],
                correctIndex: 1,
                explanation: "A forensic toxicologist tests fluids and tissues to identify drugs or poisons.",
                category: "Toxicology")
        ]),
        Category(name: "Entomology", questions: [
            Question(
                text: "Why are blow flies important in forensic entomology?",
                options: ["They can detect gunshot residue", "Their development stages help estimate time of death", "They identify blood types", "They signal poisoning"],
                correctIndex: 1,
                explanation: "The predictable life cycle of blow flies helps determine a body's postmortem interval.",
                category: "Entomology"),
            Question(
                text: "At what stage do blow fly larvae usually migrate away from remains?",
                options: ["Egg stage", "First instar", "Second instar", "Third instar"],
                correctIndex: 3,
                explanation: "During the third instar stage, larvae often leave the body to pupate.",
                category: "Entomology")
        ]),
        Category(name: "Serology", questions: [
            Question(
                text: "Which test is most commonly used for preliminary identification of blood?",
                options: ["Kastle-Meyer", "RFLP", "HPLC", "ELISA"],
                correctIndex: 0,
                explanation: "The Kastle-Meyer test detects hemoglobin and is used for presumptive blood identification.",
                category: "Serology"),
            Question(
                text: "What part of the blood contains DNA used for profiling?",
                options: ["Red blood cells", "Plasma", "White blood cells", "Platelets"],
                correctIndex: 2,
                explanation: "DNA in blood is primarily found in the nuclei of white blood cells.",
                category: "Serology")
        ])
    ]
}
