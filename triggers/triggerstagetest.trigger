trigger triggerstagetest on Opportunity (before update) {

    for(opportunity opty:trigger.new)
    {
        if(opty.amount>100)
        opty.StageName='Needs Analysis';
    }
    
    
}