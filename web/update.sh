#!/bin/sh

while :
  do
    #wipe the HTML
    cp /ozzel/head.html /ozzel/index.html

    #for each shell script, run it and append the output
    for file in `ls /scripts/*.sh`
      do
        echo "<div>[#] output of $file</div>" >> /ozzel/index.html
        chmod +x $file
        echo "<div>" >> /ozzel/index.html
        ./$file >> /ozzel/index.html
        echo "</div>" >> /ozzel/index.html
        echo "<br></br>" >> /ozzel/index.html
      done
    echo "</body></html>" >> /ozzel/index.html
    sleep 10
  done

