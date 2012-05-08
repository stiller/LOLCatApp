class Magic8ballViewController < UIViewController
  def loadView
    self.view = UIImageView.alloc.init
  end

  def viewDidLoad
    view.image = UIImage.imageNamed('background.jpg')
    @label = makeLabel
    view.addSubview(@label)
    view.userInteractionEnabled = true
    recognizer = UITapGestureRecognizer.alloc.initWithTarget(self, action:'showAnswer')
    view.addGestureRecognizer(recognizer)
  end

  def showAnswer
    @label.text = ['I can haz?', 'In ur iPhone', 'Eating ur bits', 'meow'].sample
  end

  def makeLabel
    label = UILabel.alloc.initWithFrame([[10, 60], [300,80]])
    label.text = 'Tap the LOLCat!'
    label.textColor = UIColor.orangeColor
    label.font = UIFont.boldSystemFontOfSize(34)
    label.textAlignment = UITextAlignmentCenter
    label
  end
end