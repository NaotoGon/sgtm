class Genre < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '英語' },
    { id: 2, name: '日本語' },
    { id: 3, name: '中国語' },
    { id: 4, name: '韓国語' },
    { id: 5, name: 'フランス語' },
    { id: 6, name: 'イタリア語' },
    { id: 7, name: 'ポルトガル語' },
    { id: 8, name: 'スペイン語' },
    { id: 9, name: 'ロシア語' },
    { id: 10, name: 'その他' }
  ]
end
