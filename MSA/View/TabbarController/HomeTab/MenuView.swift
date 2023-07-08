//
//  MenuView.swift
//  MSA
//
//  Created by mike on 06/07/2023.
//

import UIKit

class MenuView: UIView {
    
    @IBOutlet weak var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadView()
    }
    
    private func loadView() {
        Bundle.main.loadNibNamed("MenuView", owner: self, options: nil)
        addSubview(contentView)
    }
}
