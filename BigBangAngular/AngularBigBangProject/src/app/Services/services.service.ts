import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/internal/Observable';

@Injectable({
  providedIn: 'root'
})
export class ServicesService {

  constructor(private http: HttpClient) { }

  public getAllDummyDoctors(): Observable<any> {
    return this.http.get('https://localhost:7266/api/DummyDoctorDetails')
  }

  public postDoctorDetails(doctordetails: any): Observable<any> {
    return this.http.post('https://localhost:7266/api/DoctorDetail', doctordetails)
  }

  public deleteDummyDoctors(id: string): Observable<any> {
    return this.http.delete('https://localhost:7266/api/DummyDoctorDetails?id=' + id
    );
  }


  public postAppointmentDetails(appointment:any):Observable<any>{
    return this.http.post('https://localhost:7266/api/Appointment',appointment)
  }

}
