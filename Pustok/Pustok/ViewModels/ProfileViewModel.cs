﻿using Pustok.Models;

namespace Pustok.ViewModels
{
	public class ProfileViewModel
	{
		public ProfileEditViewModel ProfileEditVM { get; set; }
		public List<Order> Orders { get; set; }
	}
}
