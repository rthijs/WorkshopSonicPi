flag_1 = (ring 0,1)

live_loop :midi_triggers do
  note, velocity = sync "/midi:*10/note_on"
  if note == 36
    set :bassdrumflag, flag_1.tick
  end
end

live_loop :bassdrum do
  if get[:bassdrumflag] == 1
    sample :bd_haus
  else
    sample :bd_mehackit
  end
  sleep 0.5
end


set :flagBD = (ring 0, 1)
