class OmikujiResult < ActiveRecord::Base
  validates :omikuji, presence: true
  validates :result, presence: true

  def do_omikuji()
    return self if self.omikuji.empty?
    self.omikuji.sub!(/[[:blank:]]/, " ") # 全角スペース対応
    return self unless self.omikuji.include? " "
    self.result = Omikujibashira.omikuji_from_str(self.omikuji, " ")
    self
  end
end
