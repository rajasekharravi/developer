trigger AccountTest1 on Account (before insert,before update,before delete,after insert,after update,after delete) {

    if(Trigger.isBefore)
    {
        if(Trigger.isInsert)
         System.debug('Fired for Before insert'); 
        if(Trigger.isUpdate)
            system.debug('Fired for before update');
    }     
    
    
}