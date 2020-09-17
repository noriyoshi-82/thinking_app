class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ジャンルを選択' },
    { id: 2, name: ' 勉強 ' },
    { id: 4, name: ' 健康 ' },
    { id: 5, name: ' お金 ' },
    { id: 6, name: ' 趣味 ' },
    { id: 7, name: ' その他 ' }
  ]
end
