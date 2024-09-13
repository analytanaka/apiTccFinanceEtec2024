const db = require('../database/connection'); 

module.exports = {
    async listarClassificacao(request, response) {
        try {            
            return response.status(200).json({
                sucesso: true, 
                mensagem: 'Lista de classificações.', 
                dados: null
            });
        } catch (error) {
            return response.status(500).json({
                sucesso: false,
                mensagem: 'Erro na requisição.',
                dados: error.message
            });
        }
    }, 
    async cadastrarClassificacao(request, response) {
        try {            
            return response.status(200).json({
                sucesso: true, 
                mensagem: 'Cadastro de classificação.', 
                dados: null
            });
        } catch (error) {
            return response.status(500).json({
                sucesso: false,
                mensagem: 'Erro na requisição.',
                dados: error.message
            });
        }
    }, 
    async editarClassificacao(request, response) {
        try {            
            return response.status(200).json({
                sucesso: true, 
                mensagem: 'Editar classificação.', 
                dados: null
            });
        } catch (error) {
            return response.status(500).json({
                sucesso: false,
                mensagem: 'Erro na requisição.',
                dados: error.message
            });
        }
    }, 
    async apagarClassificacao(request, response) {
        try {            
            return response.status(200).json({
                sucesso: true, 
                mensagem: 'Apagar classificação.', 
                dados: null
            });
        } catch (error) {
            return response.status(500).json({
                sucesso: false,
                mensagem: 'Erro na requisição.',
                dados: error.message
            });
        }
    }, 
};  
