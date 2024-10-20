/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */
document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('addressForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Impede o envio do formulário até que a validação seja concluída

        // Obtendo os valores dos campos
        const nome = document.getElementById('nome').value.trim();
        const sobrenome = document.getElementById('sobrenome').value.trim();
        const email = document.getElementById('email').value.trim();
        const senha = document.getElementById('senha').value.trim();
        const cep = document.getElementById('cep').value.trim();
        const rua = document.getElementById('rua').value.trim();
        const bairro = document.getElementById('bairro').value.trim();
        const cidade = document.getElementById('cidade').value.trim();
        const estado = document.getElementById('estado').value.trim();
        const numero = document.getElementById('numero').value.trim();

        // Validação simples
        if (!nome || !sobrenome || !email || !senha || !cep || !rua || !bairro || !cidade || !estado || !numero) {
            alert('Todos os campos são obrigatórios!');
            return;
        }

        // Validação de e-mail
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            alert('Por favor, insira um e-mail válido.');
            return;
        }

        // Se tudo estiver correto, você pode enviar os dados ou processá-los
        alert('Formulário enviado com sucesso!');
        // Aqui você pode chamar uma função para enviar os dados via AJAX ou similar
    });
});