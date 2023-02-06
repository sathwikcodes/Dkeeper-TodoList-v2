import List "mo:base/List";
import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
actor Dkeeper {

  type Note = {
    title : Text;
    content : Text;
  };

  stable var notes : List.List<Note> = List.nil<Note>();

  public func CreateNote( titleContext : Text , contentContext : Text){
    let newNote : Note = {
      title = titleContext;
      content = contentContext;
    };
    notes := List.push(newNote , notes);

    Debug.print(debug_show(notes));
  };

  public query func ReadNotes(): async [Note] {
    return List.toArray(notes);
  };

   public func removeNote(id: Nat) {
        //take drop append
        let listFront = List.take(notes, id);
        let listBack = List.drop(notes, id + 1);
        notes := List.append(listFront, listBack);
    
    }

  


}
