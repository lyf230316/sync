import os

def listDir(rootDir):
    for name in os.listdir(rootDir):
        path = os.path.join(rootDir, name)
        if (not os.path.isfile(path)):
            #push
            #pushToGit(path, name)
            create(name)

def pushToGit(fp,name):
    cmd = "cd "+fp+"&&git push --mirror ssh://tea@192.168.191.177:/volume1/git/huorong/"+name
    print(cmd)
    #os.system(cmd)

def create(name):
    print("mkdir "+name)
    print("cd "+name)
    print("git init --bare")
    print("cd ..")

listDir("/Users/lyf/Downloads/huorong-reps")
