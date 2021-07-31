filename = "test.sql"
with open(filename, 'w') as file_object:
    file_object.write("CREATE TABLE test (id int primary key, num int);\n")
    num = 1000
    for i in range(num):
        file_object.write("INSERT INTO test VALUES ({0}, {1});\n".format(i, i * 2))
    file_object.write("SELECT * FROM test;\n")

    for i in range(num):
        file_object.write("UPDATE test SET num = {0} WHERE id = {1};\n".format(i * 3, i))
    file_object.write("SELECT * FROM test;\n")

    for i in range(num):
        file_object.write("DELETE FROM test WHERE id = {0};\n".format(i))
    file_object.write("SELECT * FROM test;\n")

    file_object.write("DROP TABLE test;\n")