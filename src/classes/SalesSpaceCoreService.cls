/**
 * This global class provides the helper methods, used in the following components.
 * 1) Top Navigation panel.
 * 2) App Launcher.
 * 3) My SalesSpaceCore Applications
 * */
global with sharing class SalesSpaceCoreService {
	
	/**
	 * This method responsible to return the logged in user information.
	 * @return : User object retrieved.
	 * */
	@AuraEnabled global static User getLoggedInUserInformation(){
		return [select smallphotourl, FullPhotoUrl, name from User where id=: Userinfo.getUserId()];
	}

	
	/**
	 * This method responsible to get the mocked Navigation menus.
	 * I have created the Wrappers such that, It can be easily replaced with Salesforce data/object.
	 * No need to change the code at component level.
	 * @return : returns the list of NavigationMenuWrapper, with mocked data.
	 * */
	@AuraEnabled global static List<NavigationMenuWrapper> getNavigationMenus(){
		List<NavigationMenuWrapper> navigationMenuWrapperList = new List<NavigationMenuWrapper>();
		NavigationMenuWrapper navigationMenuWrapperObj = new NavigationMenuWrapper();
		navigationMenuWrapperObj.label = 'Dashboard';
		navigationMenuWrapperObj.url = 'url 1';
		navigationMenuWrapperObj.defaultMenu = true;
		navigationMenuWrapperList.add(navigationMenuWrapperObj);

		navigationMenuWrapperObj = new NavigationMenuWrapper();
		navigationMenuWrapperObj.label = 'Community';
		navigationMenuWrapperObj.url = 'url 2';
		navigationMenuWrapperObj.defaultMenu = false;
		navigationMenuWrapperList.add(navigationMenuWrapperObj);

		navigationMenuWrapperObj = new NavigationMenuWrapper();
		navigationMenuWrapperObj.label = 'My Learning';
		navigationMenuWrapperObj.url = 'url 3';
		navigationMenuWrapperObj.defaultMenu = false;
		navigationMenuWrapperList.add(navigationMenuWrapperObj);

		navigationMenuWrapperObj = new NavigationMenuWrapper();
		navigationMenuWrapperObj.label = 'My Cases';
		navigationMenuWrapperObj.url = 'url 4';
		navigationMenuWrapperObj.defaultMenu = false;
		navigationMenuWrapperList.add(navigationMenuWrapperObj);

		navigationMenuWrapperObj = new NavigationMenuWrapper();
		navigationMenuWrapperObj.label = 'Coach';
		navigationMenuWrapperObj.url = 'url 5';
		navigationMenuWrapperObj.defaultMenu = false;
		navigationMenuWrapperList.add(navigationMenuWrapperObj);

		navigationMenuWrapperObj = new NavigationMenuWrapper();
		navigationMenuWrapperObj.label = 'Knowledgebase';
		navigationMenuWrapperObj.url = 'url 6';
		navigationMenuWrapperObj.defaultMenu = false;
		navigationMenuWrapperList.add(navigationMenuWrapperObj);
		return navigationMenuWrapperList;
	}
	
	/**
	 * This method responsible to get the mocked MySalesSpaceApps list.
	 * I have created the Wrappers such that, It can be easily replaced with Salesforce data/object.
	 * No need to change the code at component level.
	 * @return : returns the list of MySalesSpaceAppWrapper, with mocked data.
	 * */

	@AuraEnabled global static List<MySalesSpaceAppWrapper> getMySalesSpaceApps(){
		List<MySalesSpaceAppWrapper> mySalesAppWrapperList = new List<MySalesSpaceAppWrapper>();
		MySalesSpaceAppWrapper mySalesAppWrapperObj = new MySalesSpaceAppWrapper();
		mySalesAppWrapperObj.title = 'Title 1';
		mySalesAppWrapperObj.url = '/resource/core/i/apps/A.png';
		mySalesAppWrapperObj.imageUrl = '/resource/core/i/apps/A.png';
		mySalesAppWrapperObj.altText = 'Alt';
		mySalesAppWrapperList.add(mySalesAppWrapperObj);

		mySalesAppWrapperObj = new MySalesSpaceAppWrapper();
		mySalesAppWrapperObj.title = 'Title 2';
		mySalesAppWrapperObj.url = '/resource/core/i/apps/AT.png';
		mySalesAppWrapperObj.imageUrl = '/resource/core/i/apps/AT.png';
		mySalesAppWrapperObj.altText = 'Alt';
		mySalesAppWrapperList.add(mySalesAppWrapperObj);

		mySalesAppWrapperObj = new MySalesSpaceAppWrapper();
		mySalesAppWrapperObj.title = 'Title 3';
		mySalesAppWrapperObj.url = '/resource/core/i/apps/B.png';
		mySalesAppWrapperObj.imageUrl = '/resource/core/i/apps/B.png';
		mySalesAppWrapperObj.altText = 'Alt';
		mySalesAppWrapperList.add(mySalesAppWrapperObj);

		mySalesAppWrapperObj = new MySalesSpaceAppWrapper();
		mySalesAppWrapperObj.title = 'Title 4';
		mySalesAppWrapperObj.url = '/resource/core/i/apps/D.png';
		mySalesAppWrapperObj.imageUrl = '/resource/core/i/apps/D.png';
		mySalesAppWrapperObj.altText = 'Alt';
		mySalesAppWrapperList.add(mySalesAppWrapperObj);


		mySalesAppWrapperObj = new MySalesSpaceAppWrapper();
		mySalesAppWrapperObj.title = 'Title 5';
		mySalesAppWrapperObj.url = '/resource/core/i/apps/DS.png';
		mySalesAppWrapperObj.imageUrl = '/resource/core/i/apps/DS.png';
		mySalesAppWrapperObj.altText = 'Alt';
		mySalesAppWrapperList.add(mySalesAppWrapperObj);

		mySalesAppWrapperObj = new MySalesSpaceAppWrapper();
		mySalesAppWrapperObj.title = 'Title 6';
		mySalesAppWrapperObj.url = '/resource/core/i/apps/GM.png';
		mySalesAppWrapperObj.imageUrl = '/resource/core/i/apps/GM.png';
		mySalesAppWrapperObj.altText = 'Alt';
		mySalesAppWrapperList.add(mySalesAppWrapperObj);
		

		return mySalesAppWrapperList;

	}

	/**
	 * This method responsible to get the mocked app section list.
	 * I have created the Wrappers such that, It can be easily replaced with Salesforce data/object.
	 * No need to change the code at component level.
	 * @return : returns the list of AppSection, with mocked data.
	 * */
	@AuraEnabled global static List<AppSection> getAppSections(){ 
		List<AppSection> appSectionList = new List<AppSection>();

		AppSection appSectionObj = new AppSection();
		appSectionObj.appLabel = 'RECENTLY USED APPS';

		List<AppLauncherWrapper> appLauncherWrapperList = new List<AppLauncherWrapper>();

		AppLauncherWrapper appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'DocuSign';
		appLauncherWrapperObj.url = 'url 1';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '/resource/core/i/apps/DS.png';
		appLauncherWrapperList.add(appLauncherWrapperObj);


		appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'Yext';
		appLauncherWrapperObj.url = 'url 2';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '/resource/core/i/apps/Y.png';
		appLauncherWrapperList.add(appLauncherWrapperObj);


		appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'InfoQuest';
		appLauncherWrapperObj.url = 'url 3';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '/resource/core/i/apps/IQ.png';
		appLauncherWrapperList.add(appLauncherWrapperObj);


		appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'Teamcomcast';
		appLauncherWrapperObj.url = 'url 4';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '/resource/core/i/apps/TC.png';
		appLauncherWrapperList.add(appLauncherWrapperObj);


		appSectionObj.appLaucherWrapperList = appLauncherWrapperList;

		appSectionList.add(appSectionObj);


		appSectionObj = new AppSection();
		appSectionObj.appLabel = 'SALESSPACE APPS';

		appLauncherWrapperList = new List<AppLauncherWrapper>();

		appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'Collateral';
		appLauncherWrapperObj.url = 'url 1';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '';
		appLauncherWrapperList.add(appLauncherWrapperObj);


		appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'Competitive Edge';
		appLauncherWrapperObj.url = 'url 2';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '/resource/core/i/apps/CE.png';
		appLauncherWrapperList.add(appLauncherWrapperObj);


		appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'CUVSO';
		appLauncherWrapperObj.url = 'url 3';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '/resource/core/i/apps/CL.png';
		appLauncherWrapperList.add(appLauncherWrapperObj);


		appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'Direct';
		appLauncherWrapperObj.url = 'url 4';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '/resource/core/i/apps/D.png';
		appLauncherWrapperList.add(appLauncherWrapperObj);

		appSectionObj.appLaucherWrapperList = appLauncherWrapperList;

		appSectionList.add(appSectionObj);


		appSectionObj = new AppSection();
		appSectionObj.appLabel = 'OTHER APPS';

		appLauncherWrapperList = new List<AppLauncherWrapper>();

		appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'Google Map';
		appLauncherWrapperObj.url = 'url 1';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '/resource/core/i/apps/GM.png';
		appLauncherWrapperList.add(appLauncherWrapperObj);


		appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'Ass. Toolkit';
		appLauncherWrapperObj.url = 'url 2';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '/resource/core/i/apps/AT.png';
		appLauncherWrapperList.add(appLauncherWrapperObj);


		appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'BAM';
		appLauncherWrapperObj.url = 'url 3';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '/resource/core/i/apps/B.png';
		appLauncherWrapperList.add(appLauncherWrapperObj);


		appLauncherWrapperObj = new AppLauncherWrapper();
		appLauncherWrapperObj.label = 'BILLER';
		appLauncherWrapperObj.url = 'url 4';
		appLauncherWrapperObj.title = 'title';
		appLauncherWrapperObj.imageUrl = '/resource/core/i/apps/BL.png';
		appLauncherWrapperList.add(appLauncherWrapperObj);

		
		appSectionObj.appLaucherWrapperList = appLauncherWrapperList;

		appSectionList.add(appSectionObj);

		return appSectionList;

	}

	/**
	 * This wrapper class holds the data for Navigation menus component.
	 * */

	global class NavigationMenuWrapper{
		@AuraEnabled global String label {get;set;}
		@AuraEnabled global String url {get;set;}
		@AuraEnabled global Boolean defaultMenu {get;set;}
	}

	/**
	 * This wrapper class holds the data for App Launcher apps.
	 * */
	global class AppLauncherWrapper{
		@AuraEnabled global String label {get;set;}
		@AuraEnabled global String title {get;set;}
		@AuraEnabled global String url {get;set;}
		@AuraEnabled global String imageUrl {get;set;}
	}
	
	/**
	 * This wrapper class holds the data for App Section component
	 * Each App Section contains multiple AppLauncherWrapper.
	 * */
	global class AppSection{
		@AuraEnabled global String appLabel {get;set;}
		@AuraEnabled List<AppLauncherWrapper> appLaucherWrapperList {get; set;}
	}
	
	/**
	 * This wrapper class holds the data for MySalessSpace Apps component.
	 * */
	global class MySalesSpaceAppWrapper{
		@AuraEnabled global String title {get;set;}
		@AuraEnabled global String url {get;set;}
		@AuraEnabled global String imageUrl {get;set;}
		@AuraEnabled global String altText {get;set;}
	}
	
}