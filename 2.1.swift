// DONE USING SWIFT PLAYGROUND

import Foundation
import FoundationNetworking

protocol Hint {
    var id: Int { get };
    func toString() -> String;
}

extension Hint {
    var id: Int {
        404
    }
}

protocol Imageable: Hint {
    func getImage() -> URL
}

protocol Linkable: Hint {
    func getLink() -> URL
}

protocol Stringable: Hint {
    func getStringable() -> String
}

protocol ImageWithLinkable: Imageable, Linkable {
    func getImageWithLink() -> (URL, URL)
}

protocol ImageWithTextable: Imageable, Stringable {
    func getImageWithText() -> (URL, String)
}

protocol Prompt {
    var searchQuery: String { get };
    init (searchQuery: String)

    func getImagePrompt(from: String) -> Array<Imageable>
    func getLinkPrompt(from: String) -> Array<Linkable>
    func getStringPrompt(from: String) -> Array<Stringable>
    func getImageWithLinkPrompt(from: String) -> Array<ImageWithLink>
    func getImageWithTextPrompt(from: String) -> Array<ImageWithText>

    func getPrompts() -> (Int, String)
}

class Image: Imageable {
    var url: URL;
    var id: Int;
    init(id: Int, link: URL) {
        self.id = id;
        self.url = link;
    }

    func getImage() -> URL {
        self.url
    }

    func toString() -> String {
        self.url.absoluteString
    }
}

class Link: Linkable {
    var id: Int;
    var url: URL;
    init(id: Int, link: URL) {
        self.id = id;
        self.url = link;
    }
    func getLink() -> URL {
        self.url
    }

    func toString() -> String {
        self.url.absoluteString
    }
}

class Text: Stringable {
    var id: Int;
    var text: String;
    init(id: Int, text: String) {
        self.id = id;
        self.text = text;
    }

    func getStringable() -> String {
        self.text
    }

    func toString() -> String {
        self.text
    }
}

class ImageWithLink: ImageWithLinkable {
    var id: Int;
    var img: URL;
    var link: URL;
    init(id: Int, img: URL, link: URL) {
        self.id = id;
        self.img = img;
        self.link = link;
    }
    func getImageWithLink() -> (URL, URL) {
        (self.img, self.link)
    }

    func getImage() -> URL {
        self.img
    }

    func getLink() -> URL {
        self.link
    }

    func toString() -> String {
        self.img.absoluteString + " " + self.link.absoluteString
    }
}

class ImageWithText: ImageWithTextable {
    var id: Int;
    var img: URL;
    var text: String;
    init(id: Int, img: URL, text: String) {
        self.id = id;
        self.img = img;
        self.text = text;
    }
    func getImageWithText() -> (URL, String) {
        (self.img, self.text)
    }

    func getImage() -> URL {
        self.img
    }

    func getStringable() -> String {
        self.text
    }

    func toString() -> String {
        self.img.absoluteString + " " + self.text
    }
}

class Search: Prompt {
    let searchQuery: String;

    required init(searchQuery: String) {
        self.searchQuery = searchQuery
    }
    let images: Array<Image> = [
        Image(id: 1, link: URL(string: "https://www.a.net/house.jpg")!),
        Image(id: 3, link: URL(string: "https://www.a.tex/some.jpg")!),
    ]
    let links: Array<Link> = [
        Link(id: 1, link: URL(string: "https://www.google.com")!),
        Link(id: 2, link: URL(string: "https://www.yandex.ru")!),
        Link(id: 3, link: URL(string: "https://www.ifmo.ru")!)
    ]
    let texts: Array<Text> = [
        Text(id: 1, text: "Text"),
        Text(id: 2, text: "Extra")
    ]
    let imagesWithLinks: Array<ImageWithLink> = [
        ImageWithLink(id: 1, img: URL(string: "https://www.b.tex/aircraft.jpg")!, link: URL(string: "https://www.b.tex/aircrafts")!)
    ]
    let imagesWithText: Array<ImageWithText> = [
        ImageWithText(id: 1, img: URL(string: "https://www.b.tex/board.jpg")!, text: "A paper boat")
    ]

    func getImagePrompt(from: String) -> Array<Imageable> {
        images.filter { image in image.toString().contains(from) }
    }

    func getLinkPrompt(from: String) -> Array<Linkable> {
        links.filter { link in link.toString().contains(from) }
    }

    func getStringPrompt(from: String) -> Array<Stringable> {
        texts.filter { stringable in stringable.text.contains(from) }
    }

    func getImageWithLinkPrompt(from: String) -> Array<ImageWithLink> {
        imagesWithLinks.filter { imageWithLink in imageWithLink.toString().contains(from) }
    }

    func getImageWithTextPrompt(from: String) -> Array<ImageWithText> {
        imagesWithText.filter { imageWithText in imageWithText.toString().contains(from) }
    }

    func getPrompts() -> (Int, String) {
        var results: Array<Hint> = []
        results += getImagePrompt(from: searchQuery)
        results += getStringPrompt(from: searchQuery)
        results += getLinkPrompt(from: searchQuery)
        results += getImageWithLinkPrompt(from: searchQuery)
        results += getImageWithTextPrompt(from: searchQuery)

        if (results.count > 0) {
            return (results.count, results[Int.random(in: 0..<results.count)].toString())
        } else {
            return (0, "")
        }
    }
}