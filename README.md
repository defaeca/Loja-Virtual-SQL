<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Banco de dados SQL para uma loja virtual fictícia.">
</head>

<body>
    <header>
        <h1>Loja Virtual - Banco de Dados</h1>
        <p><em>Estrutura de banco de dados em SQL para uma loja virtual fictícia</em></p>
    </header>
    <section>
        <h2>Descrição</h2>
        <p>Este projeto consiste na criação de um banco de dados para uma loja virtual fictícia. A base de dados armazena informações sobre produtos, descrições técnicas, imagens, clientes, pedidos e os itens comprados em cada pedido.</p>
    </section>
    <section>
        <h2>Tabelas Principais</h2>
        <ul>
            <li><strong>tb_produtos</strong>: Armazena informações sobre os produtos disponíveis na loja, como nome e valor.</li>
            <li><strong>tb_descricoes_tecnicas</strong>: Armazena as descrições técnicas dos produtos, vinculando-as ao produto correspondente.</li>
            <li><strong>tb_imagens</strong>: Armazena URLs das imagens relacionadas aos produtos.</li>
            <li><strong>tb_clientes</strong>: Armazena informações sobre os clientes da loja, como nome e idade.</li>
            <li><strong>tb_pedidos</strong>: Registra os pedidos realizados pelos clientes, incluindo data e hora do pedido.</li>
            <li><strong>tb_pedidos_produtos</strong>: Faz a relação entre pedidos e produtos comprados, armazenando o que cada cliente comprou em cada pedido.</li>
        </ul>
    </section>
    <section>
        <h2>Exemplos de Inserções</h2>
        <ul>
            <li>Produtos: Notebook Dell, Smart TV Samsung, Smartphone LG</li>
            <li>Clientes: Jorge, Jamilton</li>
            <li>Pedidos: Produtos comprados por Jorge e Jamilton em diferentes pedidos.</li>
        </ul>
    </section>
    <section>
        <h2>Contribuidores</h2>
        <p>GitHub: <a href="https://github.com/defaeca" target="_blank">@defaeca</a></p>
    </section>
    <footer>
        <p><small>&copy; 2024 Loja Virtual. Todos os direitos reservados.</small></p>
    </footer>
</body>

</html>
