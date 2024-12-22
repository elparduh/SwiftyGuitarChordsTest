import UIKit
import SwiftyChords

class ViewController: UIViewController {

  @IBOutlet weak var chordImg: UIImageView!
  override func viewDidLoad() {
    super.viewDidLoad()
    testChords()
    getChordImage()
  }

  func testChords() {
    let chordPosition = Chords.guitar.matching(key: Chords.Key(rawValue: "C")!).matching(suffix: .major).first!
    let frame = CGRect(x: 0, y: 0, width: 100, height: 150) // I find these sizes to be good.
    let layer = chordPosition.chordLayer(rect: frame, chordName: .init(show: true, key: .symbol, suffix: .symbolized), forPrint: false)
    chordImg.image = layer.image() // might be expensive. Use Layers when possible while drawing to a view. Images are better if you plan to send them outside the app.
  }

  func getChordImage() {
    let data = Chords.guitar.count
    print(data)
  }

}

