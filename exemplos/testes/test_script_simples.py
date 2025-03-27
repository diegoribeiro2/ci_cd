from unittest import TestCase
from unittest.mock import MagicMock, patch

from scripts.script_simples import preparar_dados


class TesteScriptSimples(TestCase):
    @patch(
        "scripts.script_simples.requests.get",
    )
    def teste_preparar_dados(self, mock_get):
        mock_response = MagicMock()
        mock_response.json.return_value = {
            "title": "Título com Mock",
            "body": "Parabéns, você conseguiu!",
        }
        mock_get.return_value = mock_response
        retorno = preparar_dados()
        esperado = "Título com Mock\nParabéns, você conseguiu!"
        self.assertEqual(retorno["total"], esperado)
