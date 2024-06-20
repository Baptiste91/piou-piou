require_relative 'traduction'

test_phrase_oiseau = 'poup uiui piop poup uiui piop iupo  ipip ioui  ipou uiui piop iiou iupi piou ppou piuu  iiou ioui ipou ioui piui ppou iupi  piou piuu piup iupi piou piop piui piou piop piup ioui iipu  poup uiui piiu piiu ioui piui piup  pipp piou ppou iupi ioui  ppip'

test_phrase_humain = 'COUCOU, JE VOUDRAIS DEVENIR ASTRAUNAUTE! COMMENT FAIRE ?'

puts '1- Test on the encode method'
if test_phrase_oiseau.downcase == encode(test_phrase_humain).downcase
  puts '✅ Validation passed, transaltion from human to piou-piou is ok!'
else
  puts '❌ Validation failed, work again!'
end

puts '2- Test on the decode method'
if test_phrase_humain.downcase == decode(test_phrase_oiseau).downcase
  puts '✅ Validation passed, transaltion from piou-piou to human is ok!'
else
  puts '❌ Validation failed, work again!'
end
