import XCTest
@testable import Please

final class PleaseTests: XCTestCase {
    func testGetData() {
        let expectation = self.expectation(description: "Get data from Api itbooks")
        let apiURL = URL(string: "https://api.itbook.store/1.0/search/ios")!
        Please.getData(from: apiURL) { (data: ItBooksApiResponse) in
            XCTAssert(data.books.count >= 1)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
    }

    static var allTests = [
        ("testGetData", testGetData),
    ]
}
