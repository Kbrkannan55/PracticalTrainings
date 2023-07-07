import { Component } from '@angular/core';
import { HotelService } from '../hotel.service';

@Component({
  selector: 'app-allhotels',
  templateUrl: './allhotels.component.html',
  styleUrls: ['./allhotels.component.css']
})
export class AllhotelsComponent {
  public students: any;
HotelDetails: any;
  constructor(private service: HotelService) { }

  ngOnInit(): void {
    this.getHotels();
  }

  private getHotels(): void {
    this.service.getAllHotels().subscribe(result => {
      this.HotelDetails = result;
      console.log(this.HotelDetails);
    });
  }
}