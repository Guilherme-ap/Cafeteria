package testes;

import Controller.UsuarioController;
import Model.Usuario;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.List;

public class UsuarioControllerTest {

    @Test
    public void testGetConnection() {
        Assertions.assertNotNull(UsuarioController.getConnection(), "Falha ao estabelecer conexão com o banco de dados!");
    }

    @Test
    public void testCriarUsuario() {
        Usuario usuario = new Usuario();
        usuario.setNome("João");
        usuario.setTelefone("123456789");
        usuario.setEmail("joao@example.com");
        usuario.setSenha("senha123");
        usuario.setEndereco("Rua A, 123");

        int status = UsuarioController.criarUsuario(usuario);
        Assertions.assertTrue(status > 0, "Falha ao criar usuário!");
    }

    @Test
    public void testGetAllUsuarios() {
        List<Usuario> usuarios = UsuarioController.getAllUsuarios();
        Assertions.assertFalse(usuarios.isEmpty(), "A lista de usuários está vazia!");
    }

    @Test
    public void testAtualizarUsuario() {
        Usuario usuario = new Usuario();
        usuario.setId(3); // ID do usuário a ser atualizado
        usuario.setNome("Novo Nome");
        usuario.setTelefone("987654321");
        usuario.setEmail("novoemail@example.com");
        usuario.setSenha("novasenha123");
        usuario.setEndereco("Rua B, 456");

        int status = UsuarioController.atualizarUsuario(usuario);
        Assertions.assertTrue(status > 0, "Falha ao atualizar usuário!");
    }

    @Test
    public void testExcluirUsuario() {
        int id = 1; // ID do usuário a ser excluído

        int status = UsuarioController.excluirUsuario(id);
        Assertions.assertTrue(status > 0, "Falha ao excluir usuário!");
    }
}
