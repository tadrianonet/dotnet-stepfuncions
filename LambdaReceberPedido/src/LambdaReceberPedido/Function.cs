using Amazon.Lambda.Core;

// Assembly attribute to enable the Lambda function's JSON input to be converted into a .NET class.
[assembly: LambdaSerializer(typeof(Amazon.Lambda.Serialization.SystemTextJson.DefaultLambdaJsonSerializer))]

namespace LambdaReceberPedido;

public class Function
{
    public class Pedido
    {
        public string PedidoId { get; set; }
        public string Cliente { get; set; }
    }

    public Pedido FunctionHandler(Pedido input, ILambdaContext context)
    {
        context.Logger.LogInformation($"Receber pedido {input.PedidoId}");
        return input;
    }
}
