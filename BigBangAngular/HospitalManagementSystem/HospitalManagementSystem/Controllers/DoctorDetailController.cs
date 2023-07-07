using Azure.Core;
using HospitalManagementSystem.Models;
using HospitalManagementSystem.Repository.DoctorDetailServices;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualBasic;

namespace HospitalManagementSystem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DoctorDetailController : ControllerBase
    {
        private readonly IDoctorDetailServices _context;
        public DoctorDetailController(IDoctorDetailServices context)
        {
            _context = context;
        }


        [HttpGet]
        public async Task<List<DoctorDetail>> GetAllDoctorDetails()
        {
            return await _context.GetAllDoctorDetails();
        }

        [HttpPost]
        public async Task<List<DoctorDetail>> PostDoctorDetails(DoctorDetail doctorDetail)
        {
            return await _context.PostDoctorDetails(doctorDetail);
        }

        [HttpDelete]
        public async Task<string> DeleteDoctor(int id)
        {
            return await _context.DeleteDoctor(id);

        }

    }
}
