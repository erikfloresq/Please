# Please

Is my helper class for repetitive task

For example:

```swift
struct ApiResponse: Decodable  {
    let name: String
}

let url = URL(string: 'https://api.com')!

Please.getData(from: url)  { data: ApiResponse in
    print(data)
}
```
