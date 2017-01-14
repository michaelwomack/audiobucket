/**
 * Created by michaelwomack on 1/10/17.
 */

angular.module('app').factory('Users', ($http) => {
    
    let service = {};
    
    service.userLogin = (email, password) => {
        return $http.post('/users/login', {email: email, password: password});
    };
    
    service.registerUser = (email, password) => {
        return $http.post('/users/register', {email: email, password: password});
    };
    
    return service;
});