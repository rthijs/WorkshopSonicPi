regendruppels_piano= "/home/roel/Muziek/muziekschool/Componeren/2021-2022 Joost/Bij/geluiden/regenPiano"
regendruppels_slagwerk = "/home/roel/Muziek/muziekschool/Componeren/2021-2022 Joost/Bij/geluiden/regenSlagwerk"

live_loop :piano do
  sample regendruppels_piano, rrand_i(0, 71),
    amp: rrand(0.5, 1),
    pan: rrand(-1,1)
  sleep rrand(0.01, 0.5)
end

live_loop :slagwerk do
  sample regendruppels_slagwerk, rrand_i(0,99),
    amp: rrand(1, 1.5),
    pan: rrand(-1,1)
  sleep rrand(0.01, 0.5)
end


