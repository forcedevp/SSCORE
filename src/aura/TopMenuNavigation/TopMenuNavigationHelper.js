({
	clearClass : function(cmp, event, divId) {
		var navigationDivElement = document.getElementById(divId);
        var listItems = navigationDivElement.getElementsByTagName('a');
        
        //for each list item
        for (var index = 0; index < listItems.length; ++index) {
            if(event.target != listItems[index]){
                listItems[index].className = '';
            }
        }
	},
    
    processInit : function(cmp, event){
        var action1 = cmp.get("c.getLoggedInUserInformation");

        action1.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                
                var userObj = response.getReturnValue();
				cmp.set("v.userphotourl", userObj.SmallPhotoUrl);
                cmp.set("v.userName", userObj.Name);
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
        
        var action2 = cmp.get("c.getNavigationMenus");

        action2.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                
                var navigationMenuWrapperList = response.getReturnValue();
				cmp.set("v.navigationMenuWrapperList", navigationMenuWrapperList);
                
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

        // Add both the actions to queue.
        $A.enqueueAction(action1);
        $A.enqueueAction(action2);
    }
})