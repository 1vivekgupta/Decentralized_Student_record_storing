import Map "mo:base/HashMap";
import Text "mo:base/Text";

actor {

  type Rollnum = Text;
  type Phone = Text;

  type Entry = {
    name: Text;
    course: Text;
    gender: Text;
    address: Text;
    cgpa: Float;
    phone: Phone;
  };

  let studentrecord = Map.HashMap<Rollnum, Entry>(0, Text.equal, Text.hash);

  public func insert_student_record(Rollnum : Rollnum, entry : Entry): async () {
    studentrecord.put(Rollnum, entry);
  };

  public query func find_student_record(Rollnum : Rollnum) : async ?Entry {
    studentrecord.get(Rollnum)
  };
};