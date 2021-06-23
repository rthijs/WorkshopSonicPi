# Workshop Sonic Pi

Write programs to compose music.

## Examples

There are many examples that come bundled with Sonic Pi. They can be found in the help section or by loading them in a buffer, start typing:

```ruby
load_example 
```
And an autocomplete list shows up.

![load_example](.images/load_example.jpg)

Pick one and hit `enter`, then you need to execute that statement by hitting the run button or use the shortcut `alt+r`.

> It's important to learn these shortcuts, it's possible to live code complex music without ever lifting your fingers from the keyboard.

To hear the example hit `alt-r` again.

> Sonic pi uses the *alt* key for shortcuts, including copying and pasting. So to copy from the manual use `alt-c` `alt-v` and `alt-a` to select everything 

### Have a look around

Experiment a bit with the example code and hear the music change.

We don't have much time so let's take a step back and start with the basics.

## First Beeps

The simplest thing you can do in Sonic Pi is

```ruby
play 60
```

This plays MIDI note 60 which is the 4th c on the piano keyboard. You can also use note names.

```ruby
play :c4
```

These show up in the log where you can have a look at all sorts of messages scrolling by, this can come in handy if your code is not doing what you expect.

```ruby
play 60
play :c4
```

![play c4 and note 60](.images/c4_60.jpg)
### Everything plays at the same time

Lets play a chord:

```ruby
play :c4
play :eb4
play :g4
```

This is equivalent to 

```ruby
play 60
play 63
play 67
```
### Sleep

The next import command is `sleep`, it tells Sonic Pi to wait before continuing the program.

```ruby
play :c4
sleep 1
play :eb4
sleep 0.5
play :g4
```
## Congratulations!
Really, that's all you need to make basically all western music.

