﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Movimiento
    {
        public long ID { get; set; }
        public Usuario Usuario { get; set; }
        public DateTime FechaLogin { get; set; }
        public DateTime FechaLogout { get; set; }
    }
}
