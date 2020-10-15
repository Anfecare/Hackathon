import { FormGroup, FormBuilder, FormControl } from '@angular/forms';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {
  registrar: FormGroup;

  constructor(private fb: FormBuilder) { }

  ngOnInit(): void {
    this.registrar  = this.fb.group({
      name: new FormControl(''),
      surname: new FormControl(''),
      telephone: new FormControl(''),
      email: new FormControl(''),
      password: new FormControl(''),
    });
  }

  register(): void{
    const{ name, surname, telephone, email, password} = this.registrar.value
    console.log(name, surname, telephone, email, password);
  }
}
