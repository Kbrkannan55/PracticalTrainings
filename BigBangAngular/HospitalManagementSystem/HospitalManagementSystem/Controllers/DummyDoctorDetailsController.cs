using HospitalManagementSystem.Models;
using HospitalManagementSystem.Repository.DummyDetails;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.SqlServer.Query.Internal;

namespace HospitalManagementSystem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DummyDoctorDetailsController : ControllerBase
    {
        private readonly IDummyServices _context;
        public DummyDoctorDetailsController(IDummyServices context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<List<DoctorDummys>> GetDoctorDetails()
        {
            return await _context.GetDoctorDetails();
        }
        [HttpPost]
        public async Task<List<DoctorDummys>> PostDoctor(DoctorDummys doctorDummys)
        {
            return await _context.PostDoctor(doctorDummys);
        }

        [HttpDelete]
        public async Task<string> DeleteDoctor(string id)
        {
            return await _context.DeleteDoctor(id);
        }
    }
}
