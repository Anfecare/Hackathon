import { UsersService } from '../services/users.service';
import { error } from 'protractor';
import { Users } from './../interfaces/users';
import { Component, OnInit } from '@angular/core';


@Component({
  selector: 'app-usuario',
  templateUrl: './usuario.component.html',
  styleUrls: ['./usuario.component.css']
})

export class UsuarioComponent implements OnInit {

  users: Users[];
  constructor(private usersService: UsersService, ) {
    this.getusers();
  }
  getusers() {
    this.usersService.get().subscribe((data: Users[]) => {
      this.users = data;
    }, (error) => {
      console.log(error);
      alert('Ocurrió un error');
    });
  }

  ngOnInit(): void {
  }
//
  delete(id) {
    if (confirm('Seguro que deseas eliminar este usuario?')) {
      this.usersService.delete(id).subscribe(data => {
        alert('Eliminado con Éxito');
        console.log(data);
        this.getusers();
      }, error => {
        console.log(error);
      });
    }

  }

}
