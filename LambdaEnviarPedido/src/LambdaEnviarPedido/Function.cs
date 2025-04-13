using Amazon.Lambda.Core;
using Amazon.Lambda.Serialization.SystemTextJson;

[assembly: LambdaSerializer(typeof(DefaultLambdaJsonSerializer))]

namespace LambdaEnviarPedido;
public class Function
{
    public class Pedido
    {
        public string PedidoId { get; set; }
        public string Cliente { get; set; }
    }

    public Pedido FunctionHandler(Pedido input, ILambdaContext context)
    {
        context.Logger.LogInformation($"Enviar pedido {input.PedidoId}");
        return input;
    }
}
