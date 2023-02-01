# Code Templates

A code template is a pre-written piece of code that solves common programming problems. It provides a structured starting point to help save time when writing new code.

## The Rythm String Ring
A **String** is an **Enumerable** so it can be converted to a **Ring** using `.ring`. Use `.tick` to get the next value from the string on each iteration. This is an easy way to get a rythm going.

```ruby
live_loop :kick do
  if "x-x-xxx-xx-".ring.tick == "x" then
    sample :bd_haus
  end
  sleep 0.25
end
```

## The Conductor 
A dedicated loop keeps track of the pulse, other loops *sync* on the *cues* sent by this loop. Use it to set variables on the correct bar and change values for parameters used in other loops. A dedicated conductor loop helps fix timing problems.

### Basic Conductor
This is overkill for this case but let's try the most basic conductor.

```ruby
live_loop :conductor do
  sleep 1
end

live_loop :bass do
  sync :conductor
  play :c2
end
```
 ### Conductor 
 You can pass values with the cues, store them in a variable when syncing. The passed values will be in an array.

In this example we pass the bar number and beat:
 ```ruby
live_loop :conductor do
  bar = tick
  cue :beat, bar, 1
  sleep 0.25
  cue :beat, bar, 2
  sleep 0.25
  cue :beat, bar, 3
  sleep 0.25
  cue :beat, bar, 4
  sleep 0.25
end

live_loop :bass do
  bar, beat = sync :beat
  play :c2, amp: (ring 1.0, 0.6, 0.8, 0.5).tick
  play :g1 if beat == 1
  play :e2, amp: 0.5 if bar % 4 == 0 and beat % 2 == 0
end
```

In the *conductor* loop `tick` increments every iteration the variable `bar`, in the *bass* loop we use this to play the low `:e2` note every 4 bars on the even beats. A `:g1` is played on every first beat of every bar.
