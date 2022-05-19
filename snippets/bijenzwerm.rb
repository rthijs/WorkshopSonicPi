# bijen klanktapijt achtergrond
klarinetten = "/home/roel/Muziek/muziekschool/Componeren/2021-2022 Joost/Bij/geluiden/klarinet_samples"

use_random_seed 333

define :release_bee do
  pan = rrand(-1,1)
  panshiftstep = rrand(-0.1,0.1)
  n = rrand_i(0,34)
  klarinet = klarinetten, n
  delta_t = 0.2
  n_loops = (sample_duration(klarinet) / delta_t).floor #aantal delta_t's in sample duration
  i = 0 #iteration counter
  distance = rrand_i(0,1000) # bedient filter, hogere distance -> lpf lager en hpf hoger
  s = sample klarinet,
    pan: pan,
    attack: 1,
    release: 1,
    lpf: hz_to_midi(2000 - distance),
    hpf: hz_to_midi(40 + distance),
    amp: 1 - (distance / 500),
    rate: [1,1,1,3/2,5/4].choose # 3/2 is een terts en 5/4 is een kwint als ik het goed heb
  n_loops.times do
    newpan = pan + (i * panshiftstep)
    if newpan > 1 then
      pan = 1
      panshiftstep = panshiftstep * -1
      i = 0
    elsif newpan < -1 then
      pan = -1
      panshiftstep = panshiftstep * -1
      i = 0
    end
    control s, pan: pan + (i * panshiftstep)
    i = i + 1
    sleep delta_t
  end
end

live_loop :bij1 do
  release_bee
end

comment do
  
  live_loop :bij2 do
    release_bee
  end
  
  live_loop :bij3 do
    release_bee
  end
  
  live_loop :bij4 do
    release_bee
  end
  
  live_loop :bij5 do
    release_bee
  end
  
  live_loop :bij6 do
    release_bee
  end
  
  live_loop :bij7 do
    release_bee
  end
  
  live_loop :bij8 do
    release_bee
  end
  
  live_loop :bij9 do
    release_bee
  end
  
  live_loop :bij10 do
    release_bee
  end
  
  live_loop :bij11 do
    release_bee
  end
  
  live_loop :bij12 do
    release_bee
  end
  
  live_loop :bij13 do
    release_bee
  end
  
  live_loop :bij14 do
    release_bee
  end
  
  live_loop :bij15 do
    release_bee
  end
  
  live_loop :bij16 do
    release_bee
  end
  
  live_loop :bij17 do
    release_bee
  end
  
  live_loop :bij18 do
    release_bee
  end
  
  live_loop :bij19 do
    release_bee
  end
  
  live_loop :bij20 do
    release_bee
  end
  
  live_loop :bij21 do
    release_bee
  end
  
  live_loop :bij22 do
    release_bee
  end
  
  live_loop :bij23 do
    release_bee
  end
  
  live_loop :bij24 do
    release_bee
  end
  
  live_loop :bij25 do
    release_bee
  end
  
  live_loop :bij26 do
    release_bee
  end
  
  live_loop :bij27 do
    release_bee
  end
  
  live_loop :bij28 do
    release_bee
  end
  
  live_loop :bij29 do
    release_bee
  end
end

