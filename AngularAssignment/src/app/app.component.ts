import { Component } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { numberValidator } from './numberValidator';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  
  myForm = new FormGroup({
    numVal : new FormControl('', [numberValidator]),
  })
 
  get numVal() 
  {
    // console.log(this.myForm?.get('numVal'));
    return this.myForm?.get('numVal');
  }

  onSubmit() 
  {
    console.log(this.myForm.value);
  }
}
