﻿namespace BlazorFE.Models.User
{
    public class User
    {
        public string UserId { get; set; }
        public string Email { get; set; }
        public string Username { get; set; }
        public string PasswordHash { get; set; }
        public string FullName { get; set; }
        public string Role { get; set; }
        public bool EmailConfirmed { get; set; }
        public DateTime? Birthday { get; set; }
        public string Gender { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string ScientificTitle { get; set; }
        public string LoginProvider { get; set; }
    }
}
