# 📚 Controle de Leitura - Flutter

## 🎯 Objetivo do Projeto

Aplicar na prática os conceitos fundamentais de desenvolvimento mobile utilizando o framework Flutter e a linguagem Dart, focando na construção de interfaces de usuário (UI), navegação entre telas, gerenciamento de estado local e validação de formulários. O app não consome backend ou banco de dados, focando inteiramente na camada visual e lógica de tela.

## ✨ Funcionalidades Implementadas

* **Cadastro de Usuários:** Formulário com validação para criação de uma nova conta.
* **Autenticação (Login):** Validação de credenciais e redirecionamento seguro.
* **Dashboard (Home):** Exibição de saudação personalizada e histórico estático de leituras.

## 📱 Telas do Aplicativo

1. **Tela de Cadastro (`cadastro_screen.dart`):**
   * Coleta o Nome, Email e Senha do usuário.
   * Possui validação simples (ex: e-mail precisa conter "@", senha mínima de 6 caracteres).
   * Ao cadastrar com sucesso, navega para a tela de Login passando o nome do usuário.

2. **Tela de Login (`login_screen.dart`):**
   * Solicita Email e Senha.
   * Valida se os campos foram preenchidos corretamente.
   * Utiliza `Navigator.pushReplacement` para navegar para a tela Home, impedindo que o usuário retorne à tela de login acidentalmente pelo botão de voltar do celular.

3. **Tela Home (`home_screen.dart`):**
   * Exibe uma mensagem de boas-vindas com o nome do usuário capturado no cadastro.
   * Apresenta uma lista rolável (utilizando `ListView.builder` e `Card`) com os últimos 5 livros lidos (Título e Autor).

## 🛠️ Conceitos e Tecnologias Utilizadas

* **Linguagem e Framework:** Dart e Flutter.
* **Widgets de Layout:** `Scaffold`, `Column`, `Padding`, `Expanded`, `SingleChildScrollView`, `Card`, `ListTile`.
* **Gerenciamento de Estado:** Uso de `StatefulWidget` e o método `setState()` para controle dos formulários e interações.
* **Validação:** Uso de `GlobalKey<FormState>` e `TextEditingController` para manipulação e validação de inputs de texto.
* **Navegação:** Roteamento com `Navigator.push` e `Navigator.pushReplacement`.
* **Design:** Implementação do Material 3 com estilização global via `ThemeData`.

## 🚀 Como Executar o Projeto

- 1. Clone o repositório
```bash
git clone https://github.com/drypzz/assessmentapp-flutter
```

- 2. Abra a pasta do projeto
```bash
cd assessmentapp-flutter
```

- 3. Instalar as dependencias
```bash
flutter pub get
```

- 4. Rode o projeto utilizando
```bash
flutter run
```

## 📷 Screenshots do App

### 1.
<img src="/assets/register.png" width="250" alt="" />

### 2.
<img src="/assets/login.png" width="250" alt="" />

### 3.
<img src="/assets/home.png" width="250" alt="" />