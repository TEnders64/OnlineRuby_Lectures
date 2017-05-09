var app = angular.module('nbaApp', ['ngRoute']);
app.config(function($routeProvider, $httpProvider) {
    $routeProvider
        .when("/players", {
            templateUrl: "/partials/players_partial.html",
            controller: "playersController"
        })
        .when("/teams", {
            templateUrl: "/partials/teams_partial.html",
            controller: "teamsController"
        })
        .otherwise({
            templateUrl: "/partials/players_partial.html",
            controller: "playersController"
        })
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
});

app.factory("playerFactory", function($http){
    var factory = {};
    factory.index = function(callback) {
        $http.get("/players").success(function(output){
            // console.log(output);
            callback(output);
        })
    }
    factory.create = function(newPlayer, callback){
        $http.post("/players", newPlayer).success(function(players){
            callback(players);
        })
    }
    return factory;
})

app.controller("playersController", function($scope, playerFactory){
    playerFactory.index(function(players){
        $scope.players = players;
    });
    $scope.createPlayer = function(){
        playerFactory.create($scope.newPlayer, function(players){
            $scope.players = players;
        }); 
    }
})

app.factory("teamsFactory", function($http){
    var factory = {};
    factory.index = function(callback){
        $http.get('/teams').success(function(output){
            callback(output);
        });
    }
    return factory;
})
app.controller("teamsController", function($scope, teamsFactory){
    teamsFactory.index(function(teams){
        $scope.teams = teams;
    });
})
