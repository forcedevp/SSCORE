({
	processInit : function(cmp, event) {
		var action = cmp.get("c.getAppSections");

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                
                var appSectionWrapperList = response.getReturnValue();
				cmp.set("v.appSectionWrapperList", appSectionWrapperList);
                
            }else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                        alert("Error message: " + 
                                 errors[0].message)
                    }
                } else {
                    console.log("Unknown error");
                    alert("Unknown error");
                }
            }
            

        });

        // Add action to queue
        $A.enqueueAction(action);

	}
})