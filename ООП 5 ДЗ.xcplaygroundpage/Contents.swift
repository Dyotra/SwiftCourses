protocol File {
    var name: String { get }
    func open()
}
class FolderAndFile: File {
    let name: String
    var files: [File]
    init(name: String, files: [File] = []) {
        self.name = name
        self.files = files
    }
    func open() {
        if files.isEmpty {
            print("Открываю файл '\(name)'")
        } else {
            print("Открываю папку '\(name)'")
            for file in files {
                file.open()
            }
        }
    }
}
let file1 = FolderAndFile(name: "Курсы.playground")
let file2 = FolderAndFile(name: "project.zip")
let file3 = FolderAndFile(name: "Оно 2.mp4")
let file4 = FolderAndFile(name: "Человек Дождя.mp4")

let folder2 = FolderAndFile(name: "Xcode", files: [file1, file2])
let folder3 = FolderAndFile(name: "Фильмы", files: [file3, file4])

let folder1 = FolderAndFile(name: "Рабочий стол", files: [folder2, folder3])

folder1.open()
