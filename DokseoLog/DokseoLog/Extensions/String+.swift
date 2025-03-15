//
//  String+.swift
//  DokseoLog
//
//  Created by 박제균 on 3/14/25.
//

import Foundation

extension String {
  /// HTML 엔티티를 디코딩하여 일반 문자열로 변환
  var htmlDecoded: String {
    guard let data = self.data(using: .utf8) else {
      return self
    }
    
    if let attributedString = try? NSAttributedString(
      data: data,
      options: [
        .documentType: NSAttributedString.DocumentType.html,
        .characterEncoding: String.Encoding.utf8.rawValue
      ],
      documentAttributes: nil
    ) {
      return attributedString.string
    } else {
      return self
    }
  }
}
