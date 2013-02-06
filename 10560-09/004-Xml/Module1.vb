Module Module1

    Sub Main()
        Dim elementos As XElement =
        <produtos>
            <produto id="1">
                <nome>martelo</nome>
                <preco>12.23</preco>
            </produto>
            <produto id="2">
                <nome>marreta</nome>
                <preco>12.43</preco>
            </produto>
        </produtos>

        Console.WriteLine(elementos)

        Console.ReadKey()
    End Sub

End Module
