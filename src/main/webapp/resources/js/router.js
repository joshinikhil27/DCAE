app.config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/home');
    $stateProvider
	    .state('home', {
	        url: '/home',
	        templateUrl: 'resources/pages/home.jsp',
	        data : {pageTitle : 'Home'}
	    })
        .state('dashboard', {
            url: '/Training-VNF',
            templateUrl: 'resources/pages/dashboard.jsp',
            controller : 'dashboardCtrl',
            data : {pageTitle : 'Training VNF Data'}
        })
        .state('persistedData', {
            url: '/ML-Trainer',
            templateUrl: 'resources/pages/data-persist.jsp',
            controller : 'persistCtrl',
            data : {pageTitle : 'ML Trainer'}
        })
        .state('importVNFdata', {
            url: '/Import-VNF-Data',
            templateUrl: 'resources/pages/import-VNF-data.jsp',
            controller : 'importVNFCtrl',
            data : {pageTitle : 'Load VNF Data'}
        })
         .state('summary', {
            url: '/Action-Summary',
            templateUrl: 'resources/pages/summary.jsp',
            controller : 'summaryCtrl',
            data : {pageTitle : 'Action Summary'}
        });
});
