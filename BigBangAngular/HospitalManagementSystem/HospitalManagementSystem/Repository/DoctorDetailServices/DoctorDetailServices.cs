using Bware.Auth;
using HospitalManagementSystem.Models;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Microsoft.VisualBasic;

namespace HospitalManagementSystem.Repository.DoctorDetailServices
{
    public class DoctorDetailServices : IDoctorDetailServices
    {
        private DBContext _context;
        public DoctorDetailServices(DBContext context)
        {
            _context = context;
        }

        public async Task<List<DoctorDetail>> GetAllDoctorDetails()
        {
            var details = await _context.DoctorDetail.ToListAsync();
            return details;
        }

        public async Task<string> DeleteDoctor(int id)
        {
            var details=await _context.DoctorDetail.FirstOrDefaultAsync(x=>x.id==id);
            _context.Remove(details);
            _context.SaveChanges();
            return "Deleted";
        }

        public async Task<List<DoctorDetail>> PostDoctorDetails(DoctorDetail doctorDetail)
        {
            var details = _context.DoctorDetail.Add(doctorDetail);
            _context.SaveChanges();
            return await _context.DoctorDetail.ToListAsync();
        }
    }
}
