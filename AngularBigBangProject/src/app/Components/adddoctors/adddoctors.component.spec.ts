import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AdddoctorsComponent } from './adddoctors.component';

describe('AdddoctorsComponent', () => {
  let component: AdddoctorsComponent;
  let fixture: ComponentFixture<AdddoctorsComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AdddoctorsComponent]
    });
    fixture = TestBed.createComponent(AdddoctorsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
