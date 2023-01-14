using System;
using System.Collections.Generic;

namespace FinalSis457LFLR.Models;

public partial class Serie
{
    public int Id { get; set; }

    public string? Titulo { get; set; }

    public string? Sinopsis { get; set; }

    public string? Director { get; set; }

    public int? Duracion { get; set; }

    public DateTime? FechaEstreno { get; set; }

    public string? usuarioRegistro { get; set; }

    public bool? RegistroActivo { get; set; }
}
