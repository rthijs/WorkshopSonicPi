use_random_seed 1990

notes = chord(:C3, :minor7)

in_thread do
  use_synth :dsaw
  loop do
    #play random chord notes
    play notes.pick
    sleep 0.5
  end
end

in_thread do
  use_synth :prophet
  with_fx :bitcrusher do
    loop do
      play [:c2, :g2, :c3, :c2].pick, attack: 0.05, release: 0.5, decay: 0.5
      sleep 1
    end
  end
end



