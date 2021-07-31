filename = "operation-command"
with open(filename, 'w') as file_object:
    num = 20
    for i in range(num):
        file_object.write("touch test{0}\n".format(i))

    for i in range(num):
        file_object.write("echo \"Hello world{0}\" > test{0}\n".format(i))

    for i in range(num):
        file_object.write("cat test{0}\n".format(i))

    for i in range(num):
        file_object.write("rm test{0}\n".format(i))