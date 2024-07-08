# blank canvas to practice in real, less forgiving environment


def cleanFiles(currentMem, exMem):
    # TODO: Open the currentMem file as in r+ mode
    with open('members.txt', 'w+') as currentMem:
        #TODO: Open the exMem file in a+ mode
        with open('inactive.txt', 'a+') as exMem:
        #TODO: Read each member in the currentMem (1 member per row) file into a list.
        # Hint: Recall that the first line in the file is the header
            memList = currentMem.readlines()[1:]
        #TODO: iterate through the members and create a new list of the innactive members
            exMemList = exMem.readlines()[1:]
        # Go to the beginning of the currentMem file
            currentMem.seek(0)
            currentMem.write('Membership No  Date Joined  Active  \n')
        # TODO: Iterate through the members list.
            for member in memList:
        # If a member is inactive, add them to exMem, otherwise write them into currentMem
                if member.find("no") == -1:
                    currentMem.write(member)
                else:
                    exMem.write(member)

memReg = 'members.txt'
exReg = 'inactive.txt'
cleanFiles(memReg,exReg)