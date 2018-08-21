# ozzel

<p align="center">
  <img src="https://vignette.wikia.nocookie.net/starwars/images/9/90/Ozzel.jpg/revision/latest/scale-to-width-down/500?cb=20090331015238" width="500" title="Commander Ozzel"
</p>

## Setup

Ensure Docker is installed locally and that you have an id_rsa SSH key which you know the password to. If you do not, generate one with `ssh-keygen` and follow the prompts.

If you run into issues with the update script cloning the repository, it is likely that your id_rsa key is still locked.

Ensure you are able to execute the startup and shutdown scripts.

`chmod +x startup && ./startup`

To start, run `sudo ./startup` in a terminal. The output is groomed all the way, so it might be a bit ugly in the beta version. Also, there are no debugging features in the beta. 

Why sudo? The short answer is Docker requires sudo.


If you navigate to https://localhost/, you should now see a webpage with no output.


## Cloning a repository

To clone the `admin` respository, simply execute the following command and enter the password.

`git clone admin@localhost:/git-server/repositories/admin.git`

It will ask you if you want to add the SSH fingerprint to the known_hosts, type `yes`. This will fail (there is already a localhost), but the repository will still be cloned.

When adding scripts, be sure they have the `.sh` file type. They need not be executable, but you can chmod them if you would like.

Workflow for commiting changes:

```
git add --all
git commit -m "some message"
git push
```

Now navigate to https://localhost to see the output. The service updates every 10 seconds, and unfortunately you have to manually refresh the page.

## Shutdown

In the ozzel directory, running `sudo ./shutdown` should remove all of the docker containers and images.

## References

Throughout the files in this repo you will find refernces to blogs, articles, documentation, and other resources. The only file that was completely copied was the sshd_config, which has the refence link at the top. This was more out of convenience than out of wanting to copy someone's work. The rest I used as examples of "how to do 'A' with 'B' constraints" or unique configurations. If you have any questions regarding code, please feel free to ask!

## Beta Version Notes

By no means do I consider this a secure service. Given the prompt and the amount of time I had to work on it, I figured focusing on security would not be worth my efforts.
