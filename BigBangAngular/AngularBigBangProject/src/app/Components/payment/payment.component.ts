import { Component } from '@angular/core';

@Component({
  selector: 'app-payment',
  templateUrl: './payment.component.html',
  styleUrls: ['./payment.component.css']
})
export class PaymentComponent {
  constructor() { }
  amount:any
  handler:any = null;
  ngOnInit() {
 
    this.loadStripe();
  }
 
  pay() {    
 this.amount=1;
    var handler = (<any>window).StripeCheckout.configure({
      key: 'pk_test_51HxRkiCumzEESdU2Z1FzfCVAJyiVHyHifo0GeCMAyzHPFme6v6ahYeYbQPpD9BvXbAacO2yFQ8ETlKjo4pkHSHSh00qKzqUVK9',
      locale: 'auto',
      token: function (token: any) {
        console.log(token)
        alert('Payment Succesfull !!!');
      }
    });
 
    handler.open({
      name: 'B W A R E',
      description: 'ENTER VALID DETAILS',
      amount: this.amount * 159000 
    });
 
  }
 
  loadStripe() {
     
    if(!window.document.getElementById('stripe-script')) {
      var s = window.document.createElement("script");
      s.id = "stripe-script";
      s.type = "text/javascript";
      s.src = "https://checkout.stripe.com/checkout.js";
      s.onload = () => {
        this.handler = (<any>window).StripeCheckout.configure({
          key: 'sk_test_51NHRGFSBZq2dXUQYF5GTGT9yJBBFd6J5OXpAa9eQ2LZrabpPDaTzTpZ2vYUBIHjSdihCqXFM9NsMBjqKMt03ePni00g3jehmoF',
          locale: 'auto',
          token: function (token: any) {
            console.log(token)
            alert('Payment Success!!');
          }
        });
      }
       
      window.document.body.appendChild(s);
    }
  }
}
