/********************************************************************************************
 Class Name: {{ api_name }}TriggerHandler
 Author: {{ author }}
 Date: 
 Requirement/Project Name: AD-62116 - Account open sharing related changes
 Requirement Description: Handler Class for creating and updating Account team records.
* Date Modified                Modified By                  Description of the update
***********************************************************************************************/

public class {{ api_name }}TriggerHandler extends TriggerHandler {

    //{{ api_name }}TriggerHelper helper = new {{ api_name }}TriggerHelper();   

    
    //One of the following methods needs to be implemented
    /**
     * onInitialize
     *
     * This method is called only once at the beggining of the transaction.      
     */
    
    public virtual override void onInitialize(TriggerParams tp) {
        try{
             //insert initialize code here
        }catch(Exception e)  {
            throw new TriggerException('Error on {{ api_name }}TriggerHandler onInitialize method with the following error message'+e.getMessage());       
        }   
    }

    /**
     * onBeforeInsert
     *
     * This method is called during a BEFORE trigger for INSERT.     
     */
    public virtual override void onBeforeInsert(boolean isReEntry, List<SObject> newObjects){
        try{
            if(!isReEntry){
                //insert code here for before insert                                                      
            }
        } catch(Exception e){            
              throw new TriggerException('{{ api_name }}TriggerHandler ->onBeforeInsert ' + e);
        }
    }
    
    // Method which is called from trigger at After Insert event.
    public virtual override void onAfterInsert(boolean isReEntry, List<SObject> newObjects){        
        try{
             if(!isReEntry) {               
               //insert code here for afer insert
                                             
            }
        } catch(Exception e){          
            throw new TriggerException('{{ api_name }}TriggerHandler ->onAfterInsert ' + e);
        }        
    }
    /**
     * onBeforeUpdate
     *
     * This method is called during a BEFORE trigger for UPDATE.     
     */
    public virtual override void onBeforeUpdate(boolean isReEntry, List<SObject> oldObject, List<SObject> updatedObjects, Map<ID, SObject> objectMap,Map<ID, SObject> oldObjectMap){        
        
        try{
             if(!isReEntry){   
                //insert code here for before update
                 }
        } catch(Exception e){           
        		throw new TriggerException('{{ api_name }}TriggerHandler ->onBeforeUpdate ' + e);
        }
    } 
    
    /**
     * onAfterUpdate
     *
     * This method is called during a AFTER trigger for UPDATE.      
     */   
    public virtual override void onAfterUpdate(boolean isReEntry, List<SObject> oldObjects, List<SObject> newObjects, Map<ID, SObject> objectMap,Map<ID, SObject> oldObjectMap){
        try{
            if(!isReEntry){
              //insert code here for after update
            
        } catch(Exception e){          
            throw new TriggerException('{{ api_name }}TriggerHandler ->onAfterUpdate ' + e);
        }
    }
    
    /**
     * onBeforeDelete
     *
     * This method is called during a BEFORE trigger for DELETE.     
     */
    public virtual override void onBeforeDelete(boolean isReEntry, List<SObject> linesToDelete, Map<ID, SObject> objectMap){
        try{
             if(!isReEntry){
                //insert code here for before delete
         }            
        } catch(Exception e){           
            throw new TriggerException('{{ api_name }}TriggerHandler ->onBeforeDelete ' + e);
        }   
    }    
    
    /**
     * onAfterDelete
     *
     * This method is called during a AFTER trigger for DELETE.      
     */ 
    public virtual override void onAfterDelete(boolean isReEntry, List<SObject> deletedObjects, Map<ID, SObject> objectMap){
         /*try{
            
            if(!isReEntry){
                //insert code here for after delete
            }            
        } catch(Exception e){
        		throw new TriggerException('{{ api_name }}TriggerHandler ->onAfterDelete ' + e);
        }*/
    }
    
    /**
     * onAfterDelete
     *
     * This method is called during a AFTER trigger for UNDELETE.    
     */ 
    public virtual override void onUndelete(boolean isReEntry, List<SObject> restoredObjects){
        /*try{
            
            if(!isReEntry){
                //insert code here for undelete

            }            
        } catch(Exception e){
            throw new TriggerException('{{ api_name }}TriggerHandler ->onUndelete ' + e);
        }*/
    }

}