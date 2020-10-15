import { Users } from './../interfaces/users';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UsersService {
  API_ENDPOINT = 'http://localhost:8000/api';
  constructor(private httpClient: HttpClient) { }
  get() {
    return this.httpClient.get(this.API_ENDPOINT + '/usuario');
  }
  save(users: Users) {
    const headers = new HttpHeaders({'Content-Type': 'application/json'});
    return this.httpClient.post( this.API_ENDPOINT + '/usuario', users, {headers});
  }
  put(users) {
    const headers = new HttpHeaders({'Content-Type': 'application/json'});
    return this.httpClient.put( this.API_ENDPOINT + '/users/' + users.id, users, {headers});
  }
  delete(id) {
    return this.httpClient.delete(this.API_ENDPOINT + '/users/' + id);
  }
}
