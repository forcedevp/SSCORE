({
    "doInit" : function(cmp, event, helper) {
        helper.processInit(cmp, event);
    },
    
    "navigateTo" : function(cmp, event, helper){
        var navigateToURL = event.target.url;
        event.target.className = 'slds-active';
        helper.clearClass(cmp, event, "topNavigationNav1");
		helper.clearClass(cmp, event, "topNavigationNav2");
        console.log('Navigation URL is :: ' + navigateToURL);
    },
    
    "appLauchClick" :function(cmp, event){
        $A.get("e.c:AppLauncherEvent").fire();
    }
    
})