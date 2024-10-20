/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

document.getElementById('addressForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita o envio padrão do formulário

    const cep = document.getElementById('cep').value;
    const rua = document.getElementById('rua').value;
    const bairro = document.getElementById('bairro').value;
    const cidade = document.getElementById('cidade').value;
    const estado = document.getElementById('estado').value;

    alert(`Endereço:\nCEP: ${cep}\nRua: ${rua}\nBairro: ${bairro}\nCidade: ${cidade}\nEstado: ${estado}`);
});
// Evento para buscar o endereço ao perder o foco no campo de CEP
document.getElementById('cep').addEventListener('blur', async function() {
    const cep = this.value.replace(/\D/g, ''); // Remove caracteres não numéricos
    if (cep.length === 8) {
        await consultarEndereco(cep);
    } else {
        alert('CEP inválido. Deve conter 8 dígitos.');
    }
});

async function consultarEndereco(cep) {
    const url = `https://viacep.com.br/ws/${cep}/json/`;

    try {
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error('Erro ao consultar o CEP');
        }
        const data = await response.json();
        console.log(data);

        // Preenchendo os campos do formulário
        document.getElementById('rua').value = data.logradouro || '';
        document.getElementById('bairro').value = data.bairro || '';
        document.getElementById('cidade').value = data.localidade || '';
        document.getElementById('estado').value = data.uf || '';
    } catch (error) {
        console.error('Erro:', error);
        alert('Erro ao buscar o endereço. Tente novamente.');
    }
}
