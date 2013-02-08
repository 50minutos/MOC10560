using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace _002_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ICalculadora" in both code and config file together.
    [ServiceContract]
    public interface ICalculadora
    {
        [OperationContract]
        double Somar(double x, double y);

        [OperationContract]
        double Subtrair(double x, double y);
        
        [OperationContract]
        double Multiplicar(double x, double y);

        [OperationContract]
        double Dividir(double x, double y);

        [OperationContract]
        double Elevar(double x, double y);
    }
}
