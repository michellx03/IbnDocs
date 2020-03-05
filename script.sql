-- CRIANDO SCHEMAS --
CREATE SCHEMA controle_acesso;
CREATE SCHEMA sistema;

-- INSERINDO REGRAS --
INSERT INTO controle_acesso.regra (regr_id, regr_controller, regr_nome_exibido) VALUES 
(1, 'Usuario', 'Usuario'),
(2, 'ControleAcesso', 'ControleAcesso'), 
(3, 'Documentos', 'Documentos'),
(4, 'Empresa', 'Empresa'),
(5, 'Setor', 'Setor'),
(6, 'Responsavel', 'Responsavel');

-- CRIANDO ADMINISTRADOR --
INSERT INTO controle_acesso.usuario (usua_id, usua_senha, usua_usuario) VALUES
(1, 'toor', 'root');

-- CRIANDO PERMISSOES DO ADMINISTRADOR --
INSERT INTO controle_acesso.usuario_regra (usre_id, usre_regr_id, usre_usua_id) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1);