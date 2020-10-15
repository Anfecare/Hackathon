import { Component, OnInit } from '@angular/core';
import { Login } from './../interfaces/login';
import { FormControl, FormGroup, FormBuilder } from '@angular/forms';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

registros: FormGroup;

  constructor(private fb: FormBuilder) {

  }

  ngOnInit(): void {
    this.registros  = this.fb.group({
      email: new FormControl(''),
      password: new FormControl(''),
    });
  }

  login(): void{
    const { email, password } = this.registros.value
    console.log(email, password);
  }

}
