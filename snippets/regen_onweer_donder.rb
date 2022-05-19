live_loop :regenEnWind do
  with_fx :reverb, mix: 0 do
    with_fx :bitcrusher, mix: 0.5, sample_rate: 10000 do
      use_synth :pnoise
      with_fx :lpf, cutoff: hz_to_midi(7600) do
        with_fx :hpf, cutoff: hz_to_midi(400) do #400: harde regen, 40 met verre donder, 1200 harde regen weinig wind
          play 60,
            amp: rrand(0.5,0.7),
            attack: rrand(0.5,0.8),
            sustain: rrand(1,2.5),
            decay: rrand(2.5,3.5),
            pan: rrand(-0.9,0.9)
          sleep 1
        end
      end
    end
  end
end

#thunder sound effect
live_loop :thunder do
  with_fx :echo, phase: 0.25, decay: 0.6, amp: 0 do #toggle amp once between 0 and 1 and back to 0 fast
    with_fx :lpf, cutoff: 130 do #0 t.e.m. 130, hoge waarde: klinkt dichtbij, lage waarde: klinkt veraf
      with_fx :band_eq, freq: hz_to_midi(50), db: 24 do
        use_synth :gnoise
        play 60, attack: 0
        sleep 0.15
        play 60, attack: 0.2
        sleep 0.3
        play 60, attack: 0.5, sustain: 0, release: 3
      end
    end
  end
end
