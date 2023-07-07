import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ServicesService } from 'src/app/Services/services.service';

@Component({
  selector: 'app-appointment',
  templateUrl: './appointment.component.html',
  styleUrls: ['./appointment.component.css']
})
export class AppointmentComponent implements OnInit {
  patientForm!: FormGroup;

  constructor(private formBuilder: FormBuilder,
    private api:ServicesService) { }

  ngOnInit() {
    this.patientForm = this.formBuilder.group({
      patientName: ['', Validators.required],
      sex: ['', Validators.required],
      date: ['', Validators.required],
      doctorId: [''] 
    });
  }

  onSubmit() {
    if (this.patientForm.invalid) {
      return;
    }
  }

    public Add(): void {
      console.log(this.patientForm)
      this.api.postAppointmentDetails(this.patientForm.value).subscribe((result) => {
        alert(' Data Added ');
      });
    }

}

