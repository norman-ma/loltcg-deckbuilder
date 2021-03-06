$(document).ready(function() {
    if (window.location.href.indexOf("deckbuilder") > -1 || window.location.href.indexOf("update") > -1 ){
        console.log('here')
        const results = document.querySelector('#results-container');
        const searchScroll = new PerfectScrollbar(results);
    }
});

$('#deck-file').change(function(){
    $('#file').val($('#deck-file').val().replace(/.*[\/\\]/, ''));
});

$('#img-update').change(function(){
    $('#img-text').val($('#img-update').val().replace(/.*[\/\\]/, ''));
});

var app = angular.module("LOLTCGDeckBuilder",[]);

app.config(['$interpolateProvider', function($interpolateProvider) {
  $interpolateProvider.startSymbol('<<');
  $interpolateProvider.endSymbol('>>');
}]);

app.controller("PreviewController",['$scope','$http','$rootScope',function($scope,$http,$rootScope){
    $scope.card = null;
    $rootScope.active = null;

    var fix = function(str){
        return str.replace("\'\'", "\'")
    };

    $scope.html = function(text){
        return $.parseHTML(text);
    };

    $rootScope.$watch("active", function(){
        if($rootScope.active != null){
            return $http
                .get('/card/'+$rootScope.active.id)
                .then(function(res){
                    if(res.data.error == null){
                        let out =  res.data;
                        for(let key in out){
                            if(typeof(out[key]) === 'string'){
                                out[key] = fix(out[key]);
                            }
                        }
                        console.log(out);
                        $scope.card = out;
                        let html = $scope.html($scope.card.text);
                        $('#card-text').html('');
                        for(let line of html){
                            $('#card-text').append(line);
                        }
                        $scope.$apply();
                        //$scope.card.img = $rootScope.active.img;
                        //console.log($scope.card);
                    }
                });
        }
    });

}]);

app.controller("SearchController",['$scope','$http','$rootScope',function($scope,$http,$rootScope){

    $rootScope.toAdd = null;

    $scope.data = {
                "keyword": "",
                "card_type": "",
                "champ_region": "",
                "champ_class": "",
                "champ_type": "",
                "min_hp": 0,
                "max_hp": 0,
                "min_ad": 0,
                "max_ad": 0,
                "min_ap": 0,
                "max_ap": 0,
                "spell_type": "",
                "cdr": false,
                "res": false,
                "ats": false,
                "crit": false,
                "ls": false,
                "pen": false,
                "hsp": false
            };

    $scope.cards = [];

    $scope.search = function(){
        //  console.log($scope.data);
        return $http
            .post('/search',$scope.data)
            .then(function(res){
                //console.log(res);
                if(res.data.error == null){
                     $scope.cards = res.data.data;

                     //console.log($scope.cards);
                     searchScroll.update();
                }
            });
        };

    $scope.clear = function(){
        $scope.cards = [];
        $rootScope.active = null;
    };

    $scope.hoverIn = function(id){
        $rootScope.active = $scope.cards[id];
        //console.log($rootScope.active);
    };

    $scope.addCard = function(){
        $rootScope.toAdd = $rootScope.active;
    };

}]);

app.controller("DeckController",["$scope","$http","$rootScope",function($scope,$http,$rootScope){
    $scope.deck = {
            'name':'',
            'cards':[]
            };

    $scope.rows = [];

    $scope.url = '';
    $scope.hover = function(id){
        $rootScope.active = $scope.deck.cards[id];
        //console.log($rootScope.active);
    };

    var comparison = function(card){
        let type;
        switch(card.type){
            case('CHAMPION'):
                type = 'a';
                break;
            case('PET'):
                type = 'b';
                break;
            case('SUMMONERSPELL'):
                type = 'c';
                break;
            case('ITEM'):
                type = 'd';
                break;
        }

        return type+card.name;

    };

    var qsort = function(arr){

        if (arr.length < 2) return arr;

        const pivot = arr[Math.floor(Math.random() * arr.length)];

        let left = [];
        let equal = [];
        let right = [];

        for (let element of arr) {
            if (comparison(element) > comparison(pivot)) right.push(element);
            else if (comparison(element) < comparison(pivot)) left.push(element);
            else equal.push(element);
        }

        return qsort(left)
                .concat(equal)
                .concat(qsort(right));
    };

    $scope.sort = function(){
        $scope.deck.cards = qsort($scope.deck.cards);
        distribute();
    };

    var distribute = function(){
        $scope.rows = [];
        var n = Math.floor($scope.deck.cards.length/15) + 1;
        var i;
        for(i = 0; i < n; i++){
            var row = [];
            var u;
            for(u = 0; u < 15; u++){
                if($scope.deck.cards[i*15+u] != null){
                    var index = i*15+u;
                    $scope.deck.cards[index].index = index;
                    row.push($scope.deck.cards[index]);
                    //console.log($scope.deck.cards[i*15+u]);
                }
            }
            $scope.rows.push(row)
        }
        //  console.log('rows:', $scope.rows);
    };

    $rootScope.$watch('toAdd',function(){
        if($rootScope.toAdd !== null){
            var name = $rootScope.toAdd.name;
            var count = $scope.count(name);
            if(count<3){
                $scope.deck.cards.push($rootScope.toAdd);
                distribute();
                $rootScope.toAdd = null;
                //console.log('deck:',$scope.deck.cards);
            }
        }
    });

    $scope.count = function(name){
        var i = 0;
        $scope.deck.cards.forEach(function(card){
            if(card.name === name){
                i++;
            }
        });
        //console.log(i);
        return i;
    };

    $scope.removeCard = function(index){
        $scope.deck.cards.splice(index,1);
        distribute();
        //console.log('deck:',$scope.deck.cards);
    };

    $scope.clear = function(){
        $scope.deck.cards = [];
        distribute();
    };

    $scope.save = function(){
        return $http
            .post('/deck/save/'+$scope.deck.name,$scope.deck)
            .then(function(res){
                $scope.url = res.data;
                //console.log($scope.url);
            })
    };

    $scope.load = function(){
        var fd = new FormData();
        fd.append('file', $("#deck-file")[0].files[0]);
        fd.append('verbose','false');

        /*for (var key of fd.entries()){
            console.log(key[0] + ', ' + key[1]);
        }*/

        var name = $("#deck-file").val().replace(/.*[\/\\]/, '').replace('.dek','');
        $http
            .post('/deck/load',fd,{
            headers: {'Content-Type': undefined}
        })
            .then(function(res){
                $scope.deck.cards = res.data.data;
                $scope.deck.name = name;
                distribute()
                //console.log(res);
            });
    };
}]);

app.controller("UpdateController",['$scope','$http','$rootScope',function($scope,$http,$rootScope){

    $scope.card = null;

    $rootScope.$watch("toAdd", function(){
        if($rootScope.toAdd != null){
            return $http
                .get('/card/'+$rootScope.toAdd.id)
                .then(function(res){
                    if(res.data.error == null){
                        $scope.card = res.data;
                        //$scope.card.img = $rootScope.active.img;
                        //console.log($scope.card);
                    }
                });
        } else{
            $scope.card = null;
        }
    });

    $scope.data = {
        "id": "",
        "name": "",
        "text": "",
        "cardtype": "",
        "epithet": "",
        "region": "",
        "class": ["", ""],
        "type": ["", ""],
        "hp": "",
        "ad": "",
        "ap": "",
        "belongs_to": "",
        "stats":[]
    };

    $scope.addStat = function(){
        $scope.data.stats.push({stat: "", qty: 0});
        console.log($scope.data.stats)
    };

    $scope.deleteStat = function(index){
        $scope.data.stats.splice(index,1);
        console.log($scope.data.stats)
    };

    $scope.$watch('card',function(){
        if($rootScope.card !== null){
            $scope.data = $scope.card;
        }
    });

    $scope.update = function(){
        $rootScope.active = null;
        var fd = new FormData();
        fd.append('file', $("#img-update")[0].files[0]);
        for(let key in $scope.data){
            switch(key){
                case('class'):
                    fd.append('class1', $scope.data.class[0]);
                    if($scope.data.class[1] !== ""){
                        fd.append('class2', $scope.data.class[1])
                    }else{
                        fd.append('class2', "NULL")
                    }
                case('type'):
                    if($scope.data.cardtype === 'CHAMPION') {
                        fd.append('type1', $scope.data.type[0]);
                        if ($scope.data.type[1] !== "") {
                            fd.append('type2', $scope.data.type[1])
                        } else {
                            fd.append('type2', "NULL")
                        }
                    }else{
                        fd.append('type', $scope.data.type);
                    }
                    break;
                case('stats'):
                    console.log($scope.data.stats);
                    fd.append('stats', JSON.stringify($scope.data.stats));
                    break;
                default:
                    fd.append(key, $scope.data[key]);
                    break;
            }
        }
        $http
            .post('/card/'+$scope.data.id+'/update',fd,{
                headers: {'Content-Type': undefined}
            })
            .then(function(res){
                $rootScope.active = {
                        'id':$scope.data.id,
                        'img':res.data.img,
                        'name': res.data.name
                    }
            });
    };

    $scope.new = function(){
        $rootScope.active = null;
        var fd = new FormData();
        fd.append('file', $("#img-update")[0].files[0]);
        var n = Object.keys($scope.data)
        for(key in n){
            fd.append(n[key],$scope.data[n[key]])
            //console.log(n[key],$scope.data[n[key]])
        }
        $http
            .post('/card/new',fd,{
                headers: {'Content-Type': undefined}
            })
            .then(function(res){
                console.log(res);
                $rootScope.active = {
                        'id':res.data.id,
                        'img':res.data.img,
                        'name': res.data.name
                    }
            });
    }
}]);