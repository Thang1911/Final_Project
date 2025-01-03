using System;
using System.ComponentModel.DataAnnotations;
using System.Linq;

namespace BlazorFE.Components.Helpers
{
    public static class EnumHelper
    {
        public static string GetEnumDisplayName<TEnum>(TEnum value) where TEnum : Enum
        {
            var field = typeof(TEnum).GetField(value.ToString());
            var attribute = field?.GetCustomAttributes(typeof(DisplayAttribute), false).FirstOrDefault() as DisplayAttribute;
            return attribute?.Name ?? value.ToString();
        }
    }
}
