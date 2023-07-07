import { AbstractControl, ValidationErrors } from '@angular/forms';

export function numberValidator(control: AbstractControl): ValidationErrors | null
{
    let v =+ control.value;
    // console.log(v);

    if(isNaN(v))
    {
        return { 'numberValidator': true };
    }
    return null;
}