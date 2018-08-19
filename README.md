# ozzel

<p align="center">
  <img src="https://vignette.wikia.nocookie.net/starwars/images/9/90/Ozzel.jpg/revision/latest/scale-to-width-down/500?cb=20090331015238" width="500" title="Commander Ozzel"
</p>

## Setup

Run the following...

`chmod +x startup && ./startup`

</br>

If you run into issues with your ssh-key, remove the current localhost key with

`ssh-keygen -f "/home/dev/.ssh/known_hosts" -R "localhost"`

</br>

## Cloning a repository

To clone the `admin` respository, simply execute the following command and enter the password.

`git clone admin@localhost:admin.git`

## Making a commit

After you have made changes, use the `git add` command (appropriately) followed by `git commit -m "some message"` to commit the changes.

Use `git push` and enter the password to push the changes to the git server.
