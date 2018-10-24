trigger myFirsttrigger on Account (before insert) {

    system.debug('myFirsttrigger invoked');
    
}