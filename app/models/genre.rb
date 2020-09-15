class Genre < ApplicationRecord
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: ' 勉強 '},
    { id: 4, name: ' 健康 ' },
    { id: 5, name: ' お金 ' },
    { id: 6, name: ' その他 ' }
  ]
end
