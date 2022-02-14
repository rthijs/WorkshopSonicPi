# I don't like Sonic Pi using alt+ for everything in stead of ctrl+

Sonic Pi on Windows, Linux and Raspberry Pi uses the ALT key in stead of CTRL like you would expect for things like copying and pasting.

## Good news

Sonic Pi is open source so go to [the Sonic Pi project on GitHub](https://github.com/sonic-pi-net/sonic-pi) and clone the project.

Then find the file `mainwindow.cpp` in `sonic-pi/app/gui/qt/` and find all occurences of `alt`, like this one around line 2409:

```C++
// Cmd on Mac, Alt everywhere else
QKeySequence MainWindow::metaKey(char key)
{
#ifdef Q_OS_MAC
    return QKeySequence(QString("Ctrl+%1").arg(key));
#else
    return QKeySequence(QString("alt+%1").arg(key));
#endif
}
```

Change them to `ctrl` and compile Sonic Pi yourself.
