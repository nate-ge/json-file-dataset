filename = "test.sql"
with open(filename, 'w') as file_object:
    file_object.write("use testdb\n")
    file_object.write("db.createCollection(\"testColl\")\n")
    num = 10
    for i in range(num):
        file_object.write("db.testColl.insert({title: '" + str(i) + "',description: '" + str(i*2) + "', likes: " + str(i*3) + "})\n")
    file_object.write("db.testColl.find().pretty()\n")

    for i in range(num):
        file_object.write("db.testColl.update({'title':'" + str(i) + "'},{$set:{'title':'" + str(i+1) + "'}})\n")
    file_object.write("db.testColl.find().pretty()\n")

    for i in range(num):
        file_object.write("db.testColl.remove({'title':'" + str(i) + "'})\n")
    file_object.write("db.testColl.find().pretty()\n")

    file_object.write("db.testColl.drop()\n")
    file_object.write("db.dropDatabase()\n")