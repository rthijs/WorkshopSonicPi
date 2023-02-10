live_loop :noise do
  with_fx :bpf, centre: 70, centre_slide: 2, res: 0.9999, res_slide: 2 do |bpf|
    use_synth :noise
    play :bb3, sustain: 9.999, amp: 1
    sleep 2
    control bpf, centre: :bb3 + 2 * rrand_i(1,12), res: 0.995
    sleep 1
  end
end
