using HospitalManagementSystem.Models;
using HospitalManagementSystem.Repository.AppointmentServices;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace HospitalManagementSystem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AppointmentController : ControllerBase
    {
        private IAppointmentServices _context;

        public AppointmentController(IAppointmentServices context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<List<AppointmentDetail>> GetAllAppointmentDetails()
        {
            return await _context.GetAllAppointmentDetails();
        }

        [HttpPost]
        public async Task<List<AppointmentDetail>> PostAppointmentDetails(AppointmentDetail appointmentDetail)
        {
            return await _context.PostAppointmentDetails(appointmentDetail);
        }


    }
}
