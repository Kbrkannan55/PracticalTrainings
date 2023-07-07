//ADMIN OR CUSTOMER

<div class="flexing">

    <div class="bgimg">

    </div>
    <div >
        <h5 style="margin-left: 10px;cursor: pointer;margin-top: 270px;" [routerLink]="['SignIn']">LOGIN AS ADMIN</h5> &nbsp;&nbsp;&nbsp;&nbsp;
        <h5 style="margin-left: 10px;cursor: pointer;" [routerLink]="['SignUp']">LOGIN AS CUSTOMER</h5>
     
    </div>
</div>


.flexing{
    margin-top: 20px;
    display: flex;
    justify-content: space-evenly;
}
.bgimg{
    background-image: url(../../assets/Images/Login.jpg);
    height: 800px;
    width: 1046px;
    background-size: contain;
    background-repeat: no-repeat;
}

h5{
    
    background-color: rgb(238, 118, 118);
    background-color: aliceblue;
    /* background-image: url(../../assets/Images/red-sample-top.avif); */
    font-family: ui-san-serif;
    width: 300px;
    text-align: center;
    border-radius: 5px 5px 5px 5px;
}

h5:hover{
    transform: scale(1.1);
    transition: all 0.5s linear;
}








//LOGIN PAGE

<div class="form-container">
    <div class="form login" style="margin-left: 900px;">
        <form [formGroup]="frm" (ngSubmit)="onPost()">
        <div class="title">
           Login
        </div>
        <div class="input-container"> 
           <input type="text" formControlName="username" name="username" class="input" placeholder="Username">
       </div>
       <div class="msg error" *ngIf="f['username'].invalid && (f['username'].dirty || f['username'].touched)">
        <span *ngIf="f['username'].errors?.['required']">
            Username is required  
      </span>
     </div>
    
       <div class="input-container"> 
           <input type="password" formControlName="password" name="password" class="input" placeholder="Password">
       </div>
       <div class="msg error" *ngIf="f['password'].invalid && (f['password'].dirty || f['password'].touched)">
        <span *ngIf="f['password'].errors?.['required']">
            Password is required  
      </span>
      </div>
    
       
       <button type="submit" id="btnSubmit" [routerLink]="['admin']" >Login</button>
       <div class="msg light" *ngIf="status">
           {{status.message}}
       </div>
         <a [routerLink]="['SignUp']" class="link">Not a member? Signup here</a>
        </form>
    </div>
    </div>

    *{
        margin: 0;
        padding: 0;
        font-family: sans-serif;
    }
    .form-container{
        /* background-color: #000; */
        background-image: url('../../../assets/Images/Hd-Rewards2.jpg');
        background-repeat: no-repeat;
        background-size: contain;
        display: flex;
        justify-content: center;
        height: 90vh;
        box-sizing: border-box;  
    }
    .form{
        width: 400px;
        height: 330px;
        /* background-color: #15172b; */
        padding: 20px;
        display: table; 
    }
    
    .login{
        margin-top:90px;
    }
    
    .signup{
        margin-top:30px
    }
    
    .title{
        text-align: center;
        font-size: 24px;
        font-weight: 600;
        margin-top:10px;
        /* color: #eee; */
    }
    
    .input-container{
        height: 40px;
        width: 100%;
        position: relative;
        margin-top: 20px;
    }
    
    .input{
        background-color: #303245;
        border: 0;
        box-sizing: border-box;
        color: #eee;
        font-size: 14px;
        height: 100%;
        outline: 0;
        padding: 4px 20px;
        width: 100%;
    }
    
    
    button{
        border:0;
        background-color: rgb(131 10 97);
        box-sizing: border-box;
        color:#eee;
        font-size: 18px;
        height: 40px;
        text-align: center;
        margin-top: 20px;
        width:100%;
    }
    
    button:hover{
       color:  rgb(131 10 97);
       background-color: #eee;
       cursor: pointer;
    }
    
    .msg{
        padding-top:10px;
        font-size: 15px;
    }
    
    
    .error{ color: rgb(216, 5, 5);}
    .success{ color:rgb(0, 54, 0);}
    .light{ color:white;}
    
    .link{
        text-decoration: none;
        padding-top: 10px;
        font-size: 16px;
        display: block;
        text-align: center;
        color: black;
    }
    .link:hover{
        color:red;   
    }







    //SignUp
    <div class="flexing">
        <div class="flex1">
            
        </div>
        
        
        <div class="form-container">
            <div class="form signup">
                <form [formGroup]="frm" (ngSubmit)="onPost()">
                <div class="title">
                   Signup
                </div>
            
                <div class="input-container"> 
                   <input type="text" name="name" class="input" placeholder="Name" formControlName="name">
                </div>
                <div class="msg error" *ngIf="f['name'].invalid && (f['name'].dirty || f['name'].touched)">
                    <span *ngIf="f['name'].errors?.['required']">
                        Name is required  
                  </span>
                </div>
               <div class="input-container"> 
                   <input formControlName="email" type="email" name="email" class="input" placeholder="Email">
               </div>
            
               <div class="msg error" *ngIf="f['email'].invalid && (f['email'].dirty || f['email'].touched)">
                <span *ngIf="f['email'].errors?.['required']">
                    Email is required  
              </span>
            </div>
            
                <div class="input-container"> 
                <input type="text" formControlName="username" name="username" class="input" placeholder="Username">
               </div>
            
               <div class="msg error" *ngIf="f['username'].invalid && (f['username'].dirty || f['username'].touched)">
                <span *ngIf="f['username'].errors?.['required']">
                    Username is required  
              </span>
            </div>
            
            
               <div class="input-container"> 
                   <input type="password" formControlName="password"  name="password" class="input" placeholder="Password (Format: Abc@1r)">
               </div>
            
               <div class="msg error" *ngIf="f['password'].invalid && (f['password'].dirty || f['password'].touched)">
                <span *ngIf="f['password'].errors?.['required']">
                    Password is required  
              </span>
              <span *ngIf="f['password'].errors?.['invalidPattern']">
                Atleast 6 character long,must contain 1 uppercase, 1 lowercase, 1 digit and 1 special character
            </span>
            </div>
            
               <div class="input-container"> 
                   <input type="password" formControlName="confirmPassword" name="confirm password" class="input" placeholder="Confirm Password">
               </div>
            
               <div class="msg error" *ngIf="f['confirmPassword'].invalid && (f['confirmPassword'].dirty || f['confirmPassword'].touched)">
                <span *ngIf="f['confirmPassword'].errors?.['required']">
                    ConfirmPassword is required  
              </span>
              <span *ngIf="f['confirmPassword'].errors?.['mustMatch']">
                Password and confirm password should be matched  
            </span>
               </div>
            
               <button type="submit" id="btnSubmit" [disabled]="frm.invalid" >Signup</button>
               
               <div class="msg light" *ngIf="status" style="color: black;text-align: center;">
                  {{status.message}}
               </div>
            
                 <a [routerLink]="['Login']" class="link">Already a member? Login here</a>
                </form>
            </div>
            </div>
        
            </div>

            *{
                margin: 0;
                padding: 0;
                font-family: sans-serif;
            }
            
            .flexing{
                display: flex;
                justify-content: center;
            
            }
            .flex1{
                background-image: url(../../../assets/Images/signup.jpg);
                background-size: contain;
                width: 1000px;
                height: 1200px;
                background-repeat: no-repeat;
            }
            
            .form-container{
                /* background-color: #000; */
                /* background-image: url('/images/darkbg2.jpg'); */
                display: flex;
                justify-content: center;
                height: 93vh;
                box-sizing: border-box;  
            }
            .form{
                width: 400px;
                height: 330px;
                /* background-color: #15172b; */
                padding: 20px;
                display: table;  /*I need to remember it*/
            }
            
            .login{
                margin-top:90px;
            }
            
            .signup{
                margin-top:30px
            }
            
            .title{
                text-align: center;
                font-size: 24px;
                font-weight: 600;
                margin-top:10px;
                /* color: #eee; */
            }
            
            .input-container{
                height: 40px;
                width: 100%;
                position: relative;
                margin-top: 20px;
            }
            
            .input{
                background-color: #303245;
                border: 0;
                box-sizing: border-box;
                color: #eee;
                font-size: 14px;
                height: 100%;
                outline: 0;
                padding: 4px 20px;
                width: 100%;
            }
            
            
            button{
                border:0;
                background-color: rgb(131 10 97);
                box-sizing: border-box;
                color:#eee;
                font-size: 18px;
                height: 40px;
                text-align: center;
                margin-top: 20px;
                width:100%;
            }
            
            button:hover{
               color:  rgb(131 10 97);
               background-color: #eee;
               cursor: pointer;
            }
            
            .msg{
                padding-top:10px;
                font-size: 15px;
            }
            
            
            .error{ color: rgb(216, 5, 5);}
            .success{ color:rgb(0, 54, 0);}
            .light{ color:white;}
            
            .link{
                text-align: center;
                text-decoration: none;
                padding-top: 10px;
                font-size: 16px;
                display: block;
                color: black;
            }
            .link:hover{
                color:red;   
            }