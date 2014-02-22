Rails.env = 'customization'

namespace :rank do
  desc "抓取国内酒店到到排名"
  task dd: :environment do
    ruby File.join(Rails.root, 'lib', 'rank', 'rank_dd.rb')
  end

  desc "抓取国际酒店到到排名"
  task dd_g: :environment do
    ruby File.join(Rails.root, 'lib', 'rank', 'rank_dd_g.rb')
  end

  desc "抓取国内酒店TA排名"
  task ta: :environment do
    ruby File.join(Rails.root, 'lib', 'rank', 'rank_ta.rb')
  end

  desc "抓取国际酒店TA排名"
  task ta_g: :environment do
    ruby File.join(Rails.root, 'lib', 'rank', 'rank_ta_g.rb')
  end

end
