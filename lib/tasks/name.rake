task :name => [] do |t, args|
  CODE_SMALL = 'SMALL'
  CODE_MEDIUM = 'MEDIUM'
  CODE_LARGE = 'LARGE'
  CODE_CUSTOM = 'CUSTOM'
  CODE_NO_SHIPPING = 'NO_SHIPPING'

  CUSTOM_CODES = [
    CODE_CUSTOM,
    CODE_NO_SHIPPING,
  ].freeze

  DEFAULT_CODES = [
    CODE_SMALL,
    CODE_MEDIUM,
    CODE_LARGE,
  ].freeze

  def default(code)
    DEFAULT_CODES.any?(code) || CUSTOM_CODES.any?(code)
  end

  res = default(CODE_CUSTOM)
  puts "code is #{res}"
  # puts DEFAULT_CODES
  #
  user = User.find(name: "Kristina")
    .where

  user = User.find(name: "Kristina")
    .where
end
