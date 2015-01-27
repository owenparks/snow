import sys

def usage():
    ret = ""
    ret += "[quipname] [printed name] [comment] [reply] [speaker it quip-supplies] [proper scene for quip]"
    return ret

if __name__ == "__main__":
    if len(sys.argv) == 1:
        print usage()
        exit()

    outfile = open("dialogue.txt","a")

    print len(sys.argv)
    #qname, pname, tname, comment, reply, speaker, scene = sys.argv[1:]
    qname, pname, tname, comment, reply, speaker, scene = sys.argv
    outfile.write("%s is a repeatable questioning quip.\n" % qname)
    outfile.write("\tThe printed name is \"%s\".\n" % pname)
    outfile.write("\tThe comment is \"%s\".\n" % comment)
    outfile.write("\tThe reply is \"%s\".\n" % reply)
    outfile.write("\tIt quip-supplies %s.\n" % speaker)
    outfile.write("\tThe proper scene is %s.\n" % scene)
    outfile.write("\n\n")
    outfile.close()
