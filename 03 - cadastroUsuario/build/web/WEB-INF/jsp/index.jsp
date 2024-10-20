<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <title>Formulário de Cadastro</title>
        <style>
            .form-container {
                max-width: 1000px;
                margin: auto;
                margin-bottom: 500px;
                margin-top: 100px;
                padding: 10px;
                background-color: #f9f9f9;
                font-family:Arial, Helvetica, sans-serif;
            }
            .btn-custom {
                background-color: #000000;
                color: #ffffff;
                line-height: 20px;
                align-self:start
            }
        </style>
    </head>

    <body>
    <div class="container-fluid p-4 bg-dark text-white text-center">
    <h2 class="text-center mb-4">Formulário de Cadastro</h2>
    </div>
    <div class="form-container mt-5">
        <form id="addressForm">
            <div class="row mb-3">
                <div class="col">
                    <label for="nome" class="form-label">Nome</label>
                    <input type="text" class="form-control" id="nome" placeholder="Nome">
                </div>
                <div class="col">
                    <label for="sobrenome" class="form-label">Sobrenome</label>
                    <input type="text" class="form-control" id="sobrenome" placeholder="Sobrenome">
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email">
                </div>
                <div class="col">
                    <label for="senha" class="form-label">Senha</label>
                    <input type="password" class="form-control" id="senha">
                </div>
            </div> 
            <h4>Endereço</h4>
            <div class="row mb-3">
                <div class="col-md-4">
                    <label for="cep" class="form-label">CEP</label>
                    <input type="text" class="form-control" id="cep" maxlength="8" required>
                </div>
                <div class="col-md-4">
                    <label for="rua" class="form-label">Rua</label>
                    <input type="text" class="form-control" id="rua" placeholder="Rua" required>
                </div>
                <div class="col-md-4">
                    <label for="bairro" class="form-label">Bairro</label>
                    <input type="text" class="form-control" id="bairro" required placeholder="Bairro">
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-4">
                    <label for="cidade" class="form-label">Cidade</label>
                    <input type="text" class="form-control" id="cidade" required>
                </div>
                <div class="col-md-2">
                    <label for="estado" class="form-label">Estado</label>
                    <input type="text" class="form-control" id="estado" required>
                </div>
                <div class="col-md-2">
                    <label for="numero" class="form-label">Número</label>
                    <input type="text" class="form-control" id="numero" required>
                </div>
                <div class="col-md-4">
                    <label for="complemento" class="form-label">Complemento</label>
                    <input type="text" class="form-control" id="complemento">
                </div>
            </div>
            <div class="start">
            <button type="submit" class="btn btn-custom">Verificar</button>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="controller.js"></script>
    </form>
    </body>
</html>
