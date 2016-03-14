# waffle
Wallpaper Shuffle: a bash script (to download random wallpaper from Internet and) set wallpapers randomly as background image.

# waffle
Sets a random wallpaper from `~/Pictures/wallpapers`

# Install

Just copy the shell script files somewhere in your `PATH`

```sh
$ sudo cp waffle.sh wallpaperswide-waffle.sh /usr/local/bin
```

## Examples

```sh
# Sets a random picture s wallpaper
$ ./waffle.sh

# Sets the last modified picture as wallpaper
$ ./waffle.sh last

# Sets the next/previous picture to current wallpaper as new wallpaper
$ ./waffle.sh next
$ ./waffle.sh prev
```

# wallpaperswide-waffle.sh

Downloads random wallpapers from [wallpaperswide.com](http://wallpaperswide.com)
into `~/Pictures/wallpapers`  and sets it as current wallpaper.
