import subprocess
import shlex
import re
import sys


if len(sys.argv) != 3:
    print("usage: tag_latest_img.py repo env")
    sys.exit(-1)

repo = sys.argv[1]
env = sys.argv[2]

cmd = 'gcloud container images list-tags gcr.io/squad-super-heroes-dev/{repo} --filter="tags:latest"'.format(repo=repo)
cmd2 = shlex.split(cmd)
x = subprocess.run(args=cmd2,universal_newlines=True,stdout=subprocess.PIPE).stdout.replace(' ',',')
s = re.search('.*master-([\w]+.[\d]+)',x)
tag = s.groups()[0]
if tag[-1] == ",":
    tag = tag[:-1]
cmd = 'gcloud container images add-tag --quiet gcr.io/squad-super-heroes-dev/{repo}:latest gcr.io/squad-super-heroes-dev/{repo}:{env}-{tag}'.format(repo=repo,env=env,tag=tag)
subprocess.run(args=cmd,shell=True)
