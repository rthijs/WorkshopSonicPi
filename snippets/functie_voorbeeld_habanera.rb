define :playHabanera do |repeats|
  notes = (ring :d, :r, :r, :a, :f5, :r, :a, :r)
  repeats.times do
    notes.size.times do
      play notes.tick - 12 #oktaaf lager
      sleep 0.25
    end
  end
end

playHabanera 2

