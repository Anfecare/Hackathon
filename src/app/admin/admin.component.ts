import { UsersService } from './../services/users.service';
import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Users } from './../interfaces/users';
import { ActivatedRoute, RouterLink } from '@angular/router';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css']
})
export class AdminComponent implements OnInit {

  users: Users = {
    name: null,
    apel: null,
    tel: null,
    email: null,
    direc: null,
    rol: null,
    pass1: null,
    pass2: null,
    nit: null
  };
  id: any;
  editing = false;
  Users: Users[];
  constructor(private UsersService: UsersService, private activatedRoute: ActivatedRoute, private httpClient: HttpClient) {
    this.id = this.activatedRoute.snapshot.params['id'];
    if (this.id) {
      this.editing = true;
      this.UsersService.get().subscribe((data: Users[]) => {
        this.Users = data;
        this.users = this.Users.find((m) => { return m.id == this.id });
        console.log(this.Users);
      }, (error) => {
        console.log(error);
      });
    }else{
      this.editing = false;
    }
  }

  ngOnInit(): void {
  }

  // tslint:disable-next-line: typedef
  saveUser() {

    if (this.editing){
      this.UsersService.put(this.users).subscribe((data) => {
        alert('Usuario actualizado');
        console.log(data);
      }, (error) => {
        console.log(error);
        alert('Ocurrio un Error');
      });
    }else{
      this.UsersService.save(this.users).subscribe((data) => {
        alert('Usuario guardado con éxito!');
        console.log(data);
      }, (error) => {
        console.log(error);
        alert('Ocurrio un Error');
      });
    }

  }

}
