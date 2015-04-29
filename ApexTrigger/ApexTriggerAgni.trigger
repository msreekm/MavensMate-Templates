trigger {{ api_name }} on {{ object_name }} (after delete, after insert, after undelete, 
after update, before delete, before insert, before update) {
	/*
	 * Inorder to use AGNI Lite just define your handler extending TriggerHandler
	 * Follow the following steps: 
	 * 1. Instantiate your handler
	 * 2. Invoke the handleEvent method by calling handler.handleEvent
	 *    handleEvent method is just a wrapper for all events internally handleEvent just does the following
	 *	  Your handler needs to implement one of the following methods	
	 *	  a. Trigger.isInsert && Trigger.isBefore => calls your handler.OnBeforeInsert
	 *	  b. Trigger.isInsert && Trigger.isAfter => calls your handler.OnAfterInsert
	 *	  c. Trigger.isUpdate && Trigger.isBefore => calls your handler.OnBeforeUpdate
	 *	  d. Trigger.isUpdate && Trigger.isAfter => calls your handler.OnAfterUpdate
	 *	  e. Trigger.isDelete && Trigger.isBefore => calls your handler.OnBeforeDelete
	 *	  f. Trigger.isDelete && Trigger.isAfter => calls your handler.OnAfterDelete
	 *	  g. Trigger.isUnDelete  => calls your handler.OnUnDelete
	 *	  h. To cache data or for common data you can use your onIntialize and set it in static variables	
	 */
	

	    {{ object_name }}TriggerHandler handler= new {{ object_name }}TriggerHandler();
        //Adding exception handlers if not specified DefaultExceptionHandler will be used
        handler.addExceptionHandler(new DefaultExceptionHandler());
        handler.handleEvent();

	
}