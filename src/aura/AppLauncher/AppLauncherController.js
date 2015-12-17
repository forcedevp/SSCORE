({
	"doInit" : function(cmp, event, helper) {
       helper.processInit(cmp, event);
        
    },

    "appLauncherEventHandler" : function(cmp, event){
        // Toggle the appLauncherDiv div, with slds-panel-active class.
        var toggleDashboard = cmp.find("appLauncherDiv");
	    $A.util.toggleClass(toggleDashboard, "slds-panel-active");
    },
    
    "appSelectionEvent" : function(cmp, event){
         // Fire Event
         $A.get("e.c:AppSelectionEvent").fire();
         alert('App Selection Event Fired');
    }
})