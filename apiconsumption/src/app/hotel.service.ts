import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { Observable } from "rxjs";

@Injectable({
    providedIn: 'root'
})
export class HotelService {

    private basepath = "https://localhost:7004";

    constructor(private http: HttpClient) { }

    public getAllHotels(): Observable<any> {
        return this.http.get(this.basepath + "/api/HotelDetails/All Hotels Available");
    }


    // public getHotelById(id: number): Observable<any> {
    //     var path = this.basepath + "/api/HotelDetails" + id;
    //     console.log(path)
    //     return this.http.get(path);
    // }

    // public AddNewStudent(HotelDetails: any): Observable<any> {
    //     return this.http.post(this.basepath + "/api/HotelDetails", HotelDetails);
    // }

}
