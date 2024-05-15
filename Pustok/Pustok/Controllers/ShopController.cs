using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Pustok.Models;
using Pustok.ViewModels;

namespace Pustok.Controllers
{
    public class ShopController : Controller
    {
		private readonly PustokDbContext _context;

		public ShopController(PustokDbContext context)
        {
			_context = context;
		}
        public IActionResult Index(int? genreId=null,List<int>? authorIds=null, decimal? minPrice=null,decimal? maxPrice=null)
        {
            ShopViewModel vm = new ShopViewModel
            {
                Authors = _context.Authors.Include(x=>x.Books).ToList(),
                Genres = _context.Genres.Include(x => x.Books).ToList(),
            };

            var query = _context.Books.Include(x => x.BookImages.Where(bi => bi.Status != null))
                                      .Include(x => x.Author).AsQueryable();

            if (genreId != null)
                query = query.Where(x => x.GenreId == genreId);
            if (authorIds != null)
                query = query.Where(x => authorIds.Contains(x.AuthorId));
            if (minPrice != null && maxPrice != null)
                query = query.Where(x => x.SalePrice >= minPrice && x.SalePrice <= maxPrice);


            vm.Books = query.ToList();

            ViewBag.GenreId = genreId;
			ViewBag.AuthorIds = authorIds;
            ViewBag.MinPrice = _context.Books.Where(x => !x.IsDeleted).Min(x => x.SalePrice);
            ViewBag.MaxPrice = _context.Books.Where(x => !x.IsDeleted).Max(x => x.SalePrice);
            ViewBag.SelectedMinPrice = minPrice?? ViewBag.MinPrice;
            ViewBag.SelectedMaxPrice = maxPrice??ViewBag.MaxPrice;


            return View(vm);
        }
    }
}
