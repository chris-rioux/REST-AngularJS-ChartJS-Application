(function() {
	var app = angular.module('votes', ["chart.js"]);
	
	app.controller('VotesController', ['$http', '$scope', '$filter',
  		function($http, $scope, $filter) {
		
		$http.get('../AngularVotes/rest/Votes').then(function(result) {
			$scope.vote = $filter('voteFilter')(result.data);
			
			$scope.colours = ["#000000".replace(/0/g,function(){return (~~(Math.random()*16)).toString(16);})];
			$scope.labels = ['Hot', 'Hotter', 'Hottest'];
			$scope.data = [ ];
				$scope.vote.forEach(function(val) {
					$scope.data.push([[ val['hot'], val['hotter'], val['hottest'] ]]);
				})
					
		});
		
  		}
	]);

	app.filter('voteFilter', function($filter) {
		return function(data) {
			var output = [];
			var vote = {};
			
			data.forEach(function(val) {
				if (vote[val.name]) {
					if (val.vote === 'Hot') {
						if (vote[val.name][val.vote]) {
							vote[val.name];
							vote[val.name][val.vote]++;							
						}
						else {
							vote[val.name][val.vote] = 1;
						}
					}
					else if (val.vote === 'Hotter') {
						if (vote[val.name][val.vote]) {
							vote[val.name];
							vote[val.name][val.vote]++;							
						}
						else {
							vote[val.name][val.vote] = 1;							
						}
					}
					else if (val.vote === 'Hottest') {
						if (vote[val.name][val.vote]) {
							vote[val.name];
							vote[val.name][val.vote]++;							
						}
						else {
							vote[val.name][val.vote] = 1;
						}
					}
				}
				else {
					vote[val.name] = {};
					vote[val.name][val.vote] = 1;

				}
			})
			
			for (p in vote) {
				output.push({
					name : p,
					hot : vote[p]['Hot'],
					hotter : vote[p]['Hotter'],
					hottest : vote[p]['Hottest'] 
				});
			}
			return output;
		}
	});

})();