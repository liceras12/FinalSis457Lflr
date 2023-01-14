using System;
using System.Collections.Generic;

namespace FinalSis457LFLR.Models;

public partial class Usuario
{
    public int Id { get; set; }

    public string? Usuario1 { get; set; }

    public string? Clave { get; set; }

    public string? Rol { get; set; }

    public bool? RegistroActivo { get; set; }
}
