use ("StudentDB");
db.createCollection("Student");

db.student.insertMany(
    [
        {"Name":"Yogeetha",
            "Age": 20
        },
        {
            "Name":"ABC",
            "Age": 19
        }
    ]
);

db.student.find();

db.student.updateOne({"Name":"Yogeetha"},{$set:{"Age":21}});

db.student.find();

db.student.deleteOne({"Name":"ABC"});
