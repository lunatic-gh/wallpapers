This is my collection, containing a lot of cute anime images.

To download, either click "Code -> Download Zip" or run `git clone https://github.com/lunatic-gh/wallpapers` in your preferred system terminal.

NOTE: I got those from all over the internet, using a download-script. Some of the images were marked as ai-generated, and some clearly are. If you don't like AI-Art, don't use them.

- On Linux, you can use the "set-random-linux.sh" bash script.
It should work with a few popular wallpaper daemons. As of creation, it supports both Feh and Nitrogen on X11, and both SwayBG and SWWW on Wayland.
It will automatically check for the installed utilities, and run whichever is available (In the order `feh > nitrogen / swaybg > swww`).
  - If you feel like i missed a big important one, add an issue for it. And no, i didn't forget waypaper & hyprpaper.
    - Waypaper is just a frontend for daemons, so if you use a script to manage wallpapers, it's basically useless.
    - As much as i love Hyprland (and use it myself), Hyprpaper is absolute dogshit. IDK how Vaxry came up with the idea of loading/setting wallpapers from a config (manually per image). Using it here would be way out of the scope.

- On Windows, you can use the "set-random-win.ps1" powershell script to randomize your wallpaper.<br>
Due to windows being stupid, ANY powershell scripts by default need to be signed, which would cost me a lot of money.<br>
And idk about you, but i'm not going to pay, just so people can run a script containing a few commands.
To disable this behavior, you can open a powershell (AS ADMIN!!) and run `Set-ExecutionPolicy Unrestricted`. This will allow you to run any scripts on your system without them being required to be signed.
You can read the script in this repository, it's totally safe. If you still don't trust it, just don't use it i guess...
