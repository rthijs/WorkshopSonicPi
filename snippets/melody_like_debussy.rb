with_fx :reverb do
  live_loop :melody do
    use_synth :piano
    note = :bb4 + 2 * rrand_i(0,7)
    for i in 0..rrand_i(5,10) do
      play note + 2*i, pan: rrand(-1,1), amp: 1 - 0.1*i
      play note + 2*i + choose([2,4]) , pan: rrand(-1,1), amp: 1 - 0.1*i
      sleep rrand(0.12,0.633) + i / 20.0
    end
    sleep rrand(0.1,2.33)
  end
end


