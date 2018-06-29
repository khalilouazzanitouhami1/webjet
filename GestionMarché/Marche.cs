using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionMarché
{
    public class Marche
    {
        public String numMarche { get; set; }
        public String nom { get; set; }
        public String objet { get; set; }
        public String dateDebut { get; set; }
        public String delaiExecution { get; set; }
        public String ville { get; set; }
        public float montant { get; set; }

    }
}