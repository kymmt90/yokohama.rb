CELESTIAL_STEM = %w(庚 辛 壬 癸 甲 乙 丙 丁 戊 己)
EARTHLY_BRANCH = %w(申 酉 戌 亥 子 丑 寅 卯 辰 巳 午 未)

def stem_and_branch(year)
  "#{CELESTIAL_STEM[year % 10]}#{EARTHLY_BRANCH[year % 12]}"
end

puts stem_and_branch(1868)      # 戊辰戦争
puts stem_and_branch(1911)      # 辛亥革命
puts stem_and_branch(1966)      # 丙午
puts stem_and_branch(1924)      # 甲子園球場開設
