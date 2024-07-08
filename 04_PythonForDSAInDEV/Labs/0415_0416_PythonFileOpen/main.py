# blank canvas to practice in real, less forgiving environment

def cleanFiles(currentMem, exMem):
    # TODO: Open the currentMem file as in r+ mode
    with open(currentMem, 'r+') as updatedList:
        #TODO: Open the exMem file in a+ mode
        with open(exMem, 'a+') as inactives:
        #TODO: Read each member in the currentMem (1 member per row) file into a list.
            updatedList.seek(0)
            memList = updatedList.readlines()
        # Hint: Recall that the first line in the file is the header
            header = memList[0]
            memList.pop(0)
        #TODO: iterate through the members and create a new list of the innactive members
            # exMemList = []
            # for member in memList:
            #     if 'no' in member:
            #         exMemList.append(member)
        # Go to the beginning of the currentMem file
            updatedList.seek(0)
            updatedList.write(header)
        # TODO: Iterate through the members list.
        # If a member is inactive, add them to exMem, otherwise write them into currentMem
            for member in memList:
                if (member.find("no") == -1):
                    updatedList.write(member)
                else:
                    inactives.write(member)
            updatedList.truncate()
        


memReg = 'members.txt'
exReg = 'inactive.txt'
cleanFiles(memReg,exReg)