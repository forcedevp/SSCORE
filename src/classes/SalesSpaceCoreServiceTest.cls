/**
 * This class contains unit tests for validating the behavior of Apex class SalesSpaceCoreService
 */
@isTest
private class SalesSpaceCoreServiceTest {
	
	/**
	 * This method responsible to test the positive scenario where in, it fetches the logged in user information.
	 * It also asserts whether we have received expected user information.
	 */
 	static testMethod void test_getLoggedInUserInformationPositive() {
    	Test.startTest();
        	User userobj = SalesSpaceCoreService.getLoggedInUserInformation();
        Test.stopTest();
        System.assertEquals(userobj.id, Userinfo.getUserId());
    }

	/**
	 * This method responsible to test the positive scenario where in, it fetches navigation menues.
	 * It also asserts whether we have received expected wrapper list or not.
	 */
    static testMethod void test_getNavigationMenusPositive() {
    	Test.startTest();
        	List<SalesSpaceCoreService.NavigationMenuWrapper> navigationMenuWrapperList = SalesSpaceCoreService.getNavigationMenus();
        Test.stopTest();
        System.assertEquals(navigationMenuWrapperList.size(), 6);
    }

	/**
	 * This method responsible to test the positive scenario where in, it fetches apps in MySalesSpaceApps section.
	 * It also asserts whether we have received expected wrapper list or not.
	 */
    static testMethod void test_getMySalesSpaceAppsPositive() {
    	Test.startTest();
        	List<SalesSpaceCoreService.MySalesSpaceAppWrapper> mySalesAppWrapperList = SalesSpaceCoreService.getMySalesSpaceApps();
        Test.stopTest();
        System.assertEquals(mySalesAppWrapperList.size(), 6);
    }

	/**
	 * This method responsible to test the positive scenario where in, it fetches app section list.
	 * It also asserts whether we have received expected wrapper list or not.
	 */
    static testMethod void test_getAppSectionsPositive() {
    	Test.startTest();
        	List<SalesSpaceCoreService.AppSection> appSectionList = SalesSpaceCoreService.getAppSections();
        Test.stopTest();
        System.assertEquals(appSectionList.size(), 3);
    }
}