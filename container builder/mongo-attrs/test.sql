use testdb
db.createCollection("testColl")
db.testColl.insert({title: '0',description: '0', likes: 0})
db.testColl.insert({title: '1',description: '2', likes: 3})
db.testColl.insert({title: '2',description: '4', likes: 6})
db.testColl.insert({title: '3',description: '6', likes: 9})
db.testColl.insert({title: '4',description: '8', likes: 12})
db.testColl.insert({title: '5',description: '10', likes: 15})
db.testColl.insert({title: '6',description: '12', likes: 18})
db.testColl.insert({title: '7',description: '14', likes: 21})
db.testColl.insert({title: '8',description: '16', likes: 24})
db.testColl.insert({title: '9',description: '18', likes: 27})
db.testColl.find().pretty()
db.testColl.update({'title':'0'},{$set:{'title':'1'}})
db.testColl.update({'title':'1'},{$set:{'title':'2'}})
db.testColl.update({'title':'2'},{$set:{'title':'3'}})
db.testColl.update({'title':'3'},{$set:{'title':'4'}})
db.testColl.update({'title':'4'},{$set:{'title':'5'}})
db.testColl.update({'title':'5'},{$set:{'title':'6'}})
db.testColl.update({'title':'6'},{$set:{'title':'7'}})
db.testColl.update({'title':'7'},{$set:{'title':'8'}})
db.testColl.update({'title':'8'},{$set:{'title':'9'}})
db.testColl.update({'title':'9'},{$set:{'title':'10'}})
db.testColl.find().pretty()
db.testColl.remove({'title':'0'})
db.testColl.remove({'title':'1'})
db.testColl.remove({'title':'2'})
db.testColl.remove({'title':'3'})
db.testColl.remove({'title':'4'})
db.testColl.remove({'title':'5'})
db.testColl.remove({'title':'6'})
db.testColl.remove({'title':'7'})
db.testColl.remove({'title':'8'})
db.testColl.remove({'title':'9'})
db.testColl.find().pretty()
db.testColl.drop()
db.dropDatabase()