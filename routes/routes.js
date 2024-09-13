const express = require('express');
const router = express.Router();

const UsuariosController = require('../controllers/usuarios');
const ReceitasController = require('../controllers/receitas');
const DespesasController = require('../controllers/despesas');
const ClassificacaoController = require('../controllers/classificacao');
const TiposDespesaController = require('../controllers/tipos_despesa');

router.get('/usuarios', UsuariosController.listarUsuarios);
router.post('/usuarios', UsuariosController.cadastrarUsuarios); 
router.patch('/usuarios', UsuariosController.editarUsuarios); 
router.delete('/usuarios', UsuariosController.apagarUsuarios); 

router.get('/receitas', ReceitasController.listarReceitas);
router.post('/receitas', ReceitasController.cadastrarReceitas); 
router.patch('/receitas', ReceitasController.editarReceitas); 

router.get('/despesas', DespesasController.listarDespesas);
router.post('/despesas', DespesasController.cadastrarDespesas); 
router.patch('/despesas', DespesasController.editarDespesas); 
router.delete('/despesas', DespesasController.apagarDespesas); 

router.get('/classificacao', ClassificacaoController.listarClassificacao);
router.post('/classificacao', ClassificacaoController.cadastrarClassificacao); 
router.patch('/classificacao', ClassificacaoController.editarClassificacao); 
router.delete('/classificacao', ClassificacaoController.apagarClassificacao); 

router.get('/tipos_despesa', TiposDespesaController .listarTiposDespesa);
router.post('/tipos_despesa', TiposDespesaController .cadastrarTiposDespesa); 
router.patch('/tipos_despesa', TiposDespesaController .editarTiposDespesa); 
router.delete('/tipos_despesa', TiposDespesaController .apagarTiposDespesa); 

module.exports = router;