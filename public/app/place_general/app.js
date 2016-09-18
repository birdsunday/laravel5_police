var app = angular.module("PlaceGeneral", ['ui.router', 'flow', 'ui.bootstrap'], function ($interpolateProvider) {

    $interpolateProvider.startSymbol('<%');
    $interpolateProvider.endSymbol('%>');

});

app.config(function ($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.otherwise("/");

    $stateProvider
        .state('home', {
            url: "/",
            templateUrl: "/app/place_general/_home.html",
            controller: "HomeController",
            resolve: {
                place_generals: function ($http, $stateParams) {
                    return $http.get('/api/guesthistory/');
                },
                nametitle: function ($http) {
                    return $http.get('/nametitle');
                }

            }
        })
        .state('form_add', {
            url: "/form_add",
            templateUrl: "/app/place_general/_add_place_general/_form_add.html",
            controller: "AddController",
            resolve: {
                nametitle: function ($http) {
                    return $http.get('/nametitle');
                }
            }

        })
        .state('form_add.add', {
            url: '/add',
            templateUrl: '/app/place_general/_add_place_general/_add.html'

        })

        .state('form_add.comfirm', {
            url: '/comfirm',
            templateUrl: '/app/place_general/_add_place_general/_comfirm_place_general/_comfirm_place.html'
        })
        .state('form_add.photo', {
            url: '/photo',
            templateUrl: '/app/place_general/_add_place_general/_photo_place_general/_photo_place_genral.html'
        })

        .state('form_add.complete', {
            url: '/complete/:id',
            templateUrl: '/app/place_general/_add_place_general/_complete_place_general/_complete_place.html',
            controller: 'CompleteController',
            resolve: {
                place_general: function ($http, $stateParams) {
                    return $http.get('/api/guesthistory/' + $stateParams.id);
                }
            }
        })
        .state('preview_place_general', {
            url: "/preview_place_general/:id",
            templateUrl: "/app/place_general/_preview_place_general.html",
            controller: "PreviewPlaceController",
            resolve: {
                place_general: function ($http, $stateParams) {
                    return $http.get('/api/guesthistory/' + $stateParams.id);
                }
            }
        })


        .state('edit', {
            url: "/edit/:id",
            templateUrl: "/app/place_general/_edit_place_general/_edit.html",
            controller: "EditController",
            resolve: {
                place_general: function ($http, $stateParams) {
                    return $http.get('/api/guesthistory/' + $stateParams.id);
                },
                nametitle: function ($http) {
                    return $http.get('/nametitle');
                }

            }

        })
        .state('add_photo', {
            url: "/add_photo/:id",
            templateUrl: "/app/place_general/_photo_place_geneal.html",
            controller: "AddPhotoPlaceController",
            resolve: {
                place_general: function ($http, $stateParams) {
                    return $http.get('/api/guesthistory/' + $stateParams.id);
                }
            }

        })


});

app.controller("AddPhotoPlaceController", function ($scope, $http, $stateParams, $rootScope, $timeout
    , $state, place_general) {
    console.log("AddPhotoPlaceController.start");

    $scope.data_place_generals = place_general.data;
    console.log($scope.data_place_generals);


    $scope.myFlow = new Flow({
        target: '/api/guesthistory/' + $scope.data_place_generals.id + '/photo',
        singleFile: true,
        method: 'post',
        testChunks: false
    })

    $scope.uploadFile = function () {

        saveCaseFile = "ต้องการอัพโหลดรูปนี้ใช่ หรือไม่";

        if (confirm(saveCaseFile)) {
            $scope.myFlow.upload();
            massged = "อัพโหลดรูปเสร็จสมบูรณ์";
            alert(massged);
            $state.go('home');


        }
        //console.log($scope.myFlow);
    }
    $scope.cancelFile = function (file) {
        var index = $scope.myFlow.files.indexOf(file)
        $scope.myFlow.files.splice(index, 1);

    }


});
app.controller("HomeController", function ($scope, $window, $http, $stateParams, place_generals, $rootScope, nametitle) {
    console.log("HomeController.start");
    $scope.data_place_generals = place_generals.data
    $scope.nametitles = nametitle.data;
    $rootScope.current_role = current_role;
    console.log($rootScope.current_role);

    $scope.printPlace = function (place_general) {

        //window.location= "/api/case/"+ $scope.caseFile.id +"/generated_pdf_case";
        $window.open('/api/guesthistory/' + place_general.id + '/generated_pdf_case', '_blank');


    }
    $scope.delete_place = function (place_general) {
        console.log(place_general);
        saveCaseFile = "ต้องการลบประวัตินี้ใช่ หรือ ไม่";

        if (confirm(saveCaseFile)) {
            var index = $scope.data_place_generals.indexOf(place_general);
            $scope.data_place_generals.splice(index, 1);
            $http({
                url: "/api/guesthistory/" + place_general.id,
                method: "DELETE",
                data: place_general
            }).success(function (response) {
                //console.log(response);
                massged = "ลบประวัติเสร็จสมบูรณ์";
                alert(massged);
                //$state.go("home");
            })
        }

    }
    $scope.print_Photoplace = function (place_general) {

        console.log(place_general.id);

        // window.location= "/api/place/"+ $scope.place.id +"/print_photo_place, '_blank'";
        $window.open('/api/guesthistory/' + place_general.id + '/print_photo_place', '_blank');


    }


});

app.controller("AddController", function ($scope, $http, $state, $timeout, nametitle) {
    console.log("AddController.start");

    $scope.guest = {};
    $scope.placefamily = {};
    $scope.addoffice = {};
    $scope.child = {};
    $scope.employee = {};
    $scope.vehicle = {};


    $scope.guest.placefamily = [];
    $scope.guest.addressoffice = [];
    $scope.guest.datachild = [];
    $scope.guest.vehicle = [];
    $scope.guest.employee = [];
    $scope.guest.date = Date();

    $scope.nametitles = nametitle.data;


    $scope.showTab = function (tab) {
        var x = '#' + tab + ' a';
        var myElement = $(x)[0];
        $timeout(function() {
            angular.element(myElement).triggerHandler('click');
        }, 0);

    }

    $scope.clear = function () {
        $scope.dt = null;
    };

    $scope.open_start = function ($event) {
        $event.preventDefault();
        $event.stopPropagation();

        $scope.opened_start = true;
    };

    $scope.open_end = function ($event) {
        $event.preventDefault();
        $event.stopPropagation();

        $scope.opened_end = true;
    };


    $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate'];
    $scope.format = $scope.formats[1];

    $scope.keyword = {};
    $scope.tempFilterTextName = '';
    $scope.filterTextTimeout;
    $scope.searchDataPlace = function ($guest) {
        if ($scope.filterTextTimeout) $timeout.cancel($scope.filterTextTimeout);

        $scope.tempFilterTextName = $guest;
        $scope.filterTextTimeout = $timeout(function () {
            $scope.filterTextName = $scope.tempFilterTextName;
            console.log($scope.filterTextName);

            if ($scope.filterTextName.length == 0) {

            } else {

                $http({
                    url: "/api/place_crime/search/place_crime",
                    method: "post",
                    data: $guest

                }).success(function (response) {
                    $scope.dataplace_crime = response;
                    $http({
                        url: "/api/place_crime/search/place_general",
                        method: "post",
                        data: $guest

                    }).success(function (response) {
                        $scope.dataplace_general = response;
                    })
                })

            }

        }, 250); // delay 250 ms
    }

    $scope.saveDataPlaceFamily = function () {
        console.log($scope.placefamily);
        $scope.guest.placefamily.push($scope.placefamily);
        $scope.placefamily = {};
    }

    $scope.DeleteDataPlaceFamily = function (placefamily) {
        var index = $scope.guest.placefamily.indexOf(placefamily);
        $scope.guest.placefamily.splice(index, 1);
    }


    $scope.saveDataOffice = function () {
        console.log($scope.addoffice);
        $scope.guest.addressoffice.push($scope.addoffice);
        $scope.addoffice = {};
    }

    $scope.DeleteDataOffice = function (dataoffice) {
        var index = $scope.guest.addressoffice.indexOf(dataoffice);
        $scope.guest.addressoffice.splice(index, 1);
    }


    $scope.saveDataChild = function () {
        console.log($scope.child);
        $scope.guest.datachild.push($scope.child);
        $scope.child = {};
    }

    $scope.DeleteDataChild = function (datachild) {
        var index = $scope.guest.datachild.indexOf(datachild);
        $scope.guest.datachild.splice(index, 1);
    }


    $scope.saveDataEmployee = function () {
        console.log($scope.employee);
        $scope.guest.employee.push($scope.employee);
        $scope.employee = {};
    }

    $scope.DeleteDataEmployee = function (employee) {
        var index = $scope.guest.employee.indexOf(employee);
        $scope.guest.employee.splice(index, 1);
    }


    $scope.saveDataVehicle = function () {
        console.log($scope.vehicle);
        $scope.guest.vehicle.push($scope.vehicle);
        $scope.vehicle = {};
    }

    $scope.DeleteDataVehicle = function (datavehicle) {
        var index = $scope.guest.vehicle.indexOf(datavehicle);
        $scope.guest.vehicle.splice(index, 1);
    }


    $scope.myFlow = new Flow({
        //  target: '/api/guesthistory/'+ $scope.guest.id +'/photo',
        singleFile: true,
        method: 'post',
        testChunks: false
    })


    $scope.cancelFile = function (file) {
        var index = $scope.myFlow.files.indexOf(file)
        $scope.myFlow.files.splice(index, 1);

    }


    $scope.saveDataGuest = function () {
        if ($scope.guest.birth) {
            var dayBirth = $scope.guest.birth;
            var getdayBirth = dayBirth.split("-");
            var YB = getdayBirth[2] - 543;
            var MB = getdayBirth[1];
            var DB = getdayBirth[0];

            var setdayBirth = moment(YB + "-" + MB + "-" + DB);
            var setNowDate = moment();
            var yearData = setNowDate.diff(setdayBirth, 'years', true); // ข้อมูลปีแบบทศนิยม
            var yearFinal = Math.round(setNowDate.diff(setdayBirth, 'years', true), 0); // ปีเต็ม
            var yearReal = setNowDate.diff(setdayBirth, 'years'); // ปีจริง
            var monthDiff = Math.floor((yearData - yearReal) * 12); // เดือน
            var str_year_month = yearReal + " ปี " + monthDiff + " เดือน"; // ต่อวันเดือนปี
            $scope.guest.age = str_year_month;
        }
        console.log($scope.guest.age);
        saveCaseFile = "ต้องการบันทึกทะเบียร์ประวัตินี้ ใช่หรือ ไม่";


        if (confirm(saveCaseFile)) {
            if ($scope.guest.name) {
                $scope.guest.status = "complete";

                $http({
                    url: "/api/guesthistory",
                    method: "post",
                    data: $scope.guest
                }).success(function (response) {
                    $scope.myFlow.opts.target = '/api/guesthistory/' + response.id + '/photo';
                    $scope.myFlow.upload();
                    $state.go("form_add.complete", {id: response.id})

                })

            } else {
                massged = "กรุณา กรอก ชื่อ ของบุคคล";
                alert(massged);
            }


        }


    }

});


app.controller("PreviewPlaceController", function ($scope, $window, $http, $stateParams,
                                                    $rootScope, $timeout, $state, place_general) {
    console.log("PreviewPlaceController.start");
    $scope.guest = place_general.data;
    console.log($scope.guest);
    $scope.printPlace = function () {

        console.log($scope.guest.id);

        //window.location= "/api/case/"+ $scope.caseFile.id +"/generated_pdf_case";
        $window.open('/api/guesthistory/' + $scope.guest.id + '/generated_pdf_case', '_blank');


    }


});


app.controller("EditController", function ($scope, $http, $stateParams, $state, place_general, nametitle) {
    console.log("EditController.start");

    $scope.guest = {};
    $scope.placefamily = {};
    $scope.addoffice = {};
    $scope.child = {};
    $scope.employee = {};
    $scope.vehicle = {};
    $scope.dataspouse = {};

    $scope.guest.placefamily = [];
    $scope.guest.addressoffice = [];
    $scope.guest.datachild = [];
    $scope.guest.vehicle = [];
    $scope.guest.employee = [];

    $scope.guest = place_general.data;
    $scope.nametitles = nametitle.data;


    function init() {

        if ($scope.guest.nametitle) {
            for (i = 0; i < $scope.nametitles.length; i++) {

                if ($scope.nametitles[i].id == $scope.guest.nametitle.id) {
                    $scope.guest.nametitle = $scope.nametitles[i];

                    break;
                }
            }
        }

        if ($scope.guest.dataspouse) {
            if ($scope.guest.dataspouse.nametitle) {
                for (a = 0; a < $scope.nametitles.length; a++) {

                    if ($scope.nametitles[a].id == $scope.guest.dataspouse.nametitle.id) {
                        $scope.guest.dataspouse.nametitle = $scope.nametitles[a];

                        break;
                    }
                }
            }

        }


    }

    init();


    $scope.saveDataOffice = function () {

        $http({
            url: "/api/guesthistory/" + $scope.guest.id + "/address_office",
            method: "post",
            data: $scope.addoffice

        }).success(function () {
            $scope.guest.addressoffice.push($scope.addoffice);
            $scope.addoffice = {};

        })
    }

    $scope.DeleteDataOffice = function (dataoffice) {
        var index = $scope.guest.addressoffice.indexOf(dataoffice);
        $scope.guest.addressoffice.splice(index, 1);
        $http({
            url: "/api/guesthistory/" + $scope.guest.id + "/address_office/" + dataoffice.id,
            method: "DELETE"
        }).success(function () {

        });
    }


    $scope.saveDataPlaceFamily = function () {
        $http({
            url: "/api/guesthistory/" + $scope.guest.id + "/place_family",
            method: "post",
            data: $scope.placefamily

        }).success(function () {
            $scope.guest.placefamily.push($scope.placefamily);
            $scope.placefamily = {};

        })
    }

    $scope.DeleteDataPlaceFamily = function (datacplacefamily) {
        var index = $scope.guest.placefamily.indexOf(datacplacefamily);
        $scope.guest.placefamily.splice(index, 1);
        $http({
            url: "/api/guesthistory/" + $scope.guest.id + "/place_family/" + datacplacefamily.id,
            method: "DELETE"
        }).success(function () {

        });
    }


    $scope.saveDataChild = function () {

        $http({
            url: "/api/guesthistory/" + $scope.guest.id + "/child",
            method: "post",
            data: $scope.child

        }).success(function () {
            $scope.guest.datachild.push($scope.child);
            $scope.child = {};

        })
    }

    $scope.DeleteDataChild = function (datachild) {
        var index = $scope.guest.datachild.indexOf(datachild);
        $scope.guest.datachild.splice(index, 1);
        $http({
            url: "/api/guesthistory/" + $scope.guest.id + "/child/" + datachild.id,
            method: "DELETE"
        }).success(function () {

        });
    }


    $scope.saveDataEmployee = function () {

        $http({
            url: "/api/guesthistory/" + $scope.guest.id + "/employee",
            method: "post",
            data: $scope.employee

        }).success(function () {
            $scope.guest.employee.push($scope.employee);
            $scope.employee = {};

        })
    }

    $scope.DeleteDataEmployee = function (employee) {
        var index = $scope.guest.employee.indexOf(employee);
        $scope.guest.employee.splice(index, 1);
        $http({
            url: "/api/guesthistory/" + $scope.guest.id + "/employee/" + employee.id,
            method: "DELETE"
        }).success(function () {

        });
    }


    $scope.saveDataVehicle = function () {

        $http({
            url: "/api/guesthistory/" + $scope.guest.id + "/vehicle",
            method: "post",
            data: $scope.vehicle

        }).success(function () {
            $scope.guest.vehicle.push($scope.vehicle);
            $scope.vehicle = {};

        })
    }

    $scope.DeleteDataVehicle = function (datavehicle) {
        var index = $scope.guest.vehicle.indexOf(datavehicle);
        $scope.guest.vehicle.splice(index, 1);
        $http({
            url: "/api/guesthistory/" + $scope.guest.id + "/vehicle/" + datavehicle.id,
            method: "DELETE"
        }).success(function () {

        });
    }


    $scope.editpreson = function () {


        saveCaseFile = "ต้องการแก้ไขทะเบียร์ประวัตินี้ ใช่หรือ ไม่";
        if (confirm(saveCaseFile)) {
            $http({
                url: "/api/guesthistory/" + $scope.guest.id,
                method: "PUT",
                data: $scope.guest
            }).success(function (response) {
                $state.go("home")
            })
        }
    }

});


app.controller("CompleteController", function ($scope, $window, $http, $stateParams, $rootScope,
                                               $timeout, $state, place_general) {
    console.log("CompleteController.start");

    $scope.guest = place_general.data;
    console.log($scope.guest);

    $scope.printPlace = function () {

        console.log($scope.guest.id);

        //window.location= "/api/case/"+ $scope.caseFile.id +"/generated_pdf_case";
        $window.open('/api/guesthistory/' + $scope.guest.id + '/generated_pdf_case', '_blank');


    }

});


app.controller("PhotoController", function ($scope, $http) {
    console.log("PhotoController.start");
    var self = this;
    self.guest = $scope.guest;

    $scope.myFlow = new Flow({
        target: '/api/guesthistory/' + self.guest.id + '/photo',
        singleFile: true,
        method: 'post',
        testChunks: false
    })

    self.uploadFile = function () {
        $scope.myFlow.upload();
        //console.log($scope.myFlow);
    }
    self.cancelFile = function (file) {
        var index = $scope.myFlow.files.indexOf(file)
        $scope.myFlow.files.splice(index, 1);

    }

});