filename = "redis-command"
with open(filename, 'w') as file_object:
    num = 10
    for i in range(num):
        file_object.write("SET {0} {1}\n".format(i, i * 2))

    for i in range(num):
        file_object.write("GET {0}\n".format(i))

    for i in range(num):
        file_object.write("EXISTS {0}\n".format(i * 2))

    for i in range(num):
        file_object.write("DEL {0}\n".format(i))