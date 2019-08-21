# Scripts for downloading flags for every country in the world
### Usage   

 &nbsp;&nbsp;&nbsp;&nbsp; ``` $> ./two_codes.sh > urls.txt && ./getimgs.sh urls.txt ```   

The above will do two things:
1. It will first run a script that contructs download urls from ISO flag codes.   
E.g. When the script reads ISO code DN from the ISO code file it constructs a download url of https://www.crwflags.com/fotw/images/d/dn.gif.   
DN is for Danmark and its flag can be dowloaded from the above url.    
2. The second script reads these urls and attempts to download each flag image. It uses gnu-parallel to fire simultaneous curl requests.
