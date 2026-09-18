# Lista 2 - Exercícios de Flutter (Listas, ListView e Cards)

Este repositório contém a resolução dos exercícios práticos propostos no Material 2 da disciplina de Programação de Aplicativos Móveis.

## 📌 Sobre a Atividade

O objetivo principal desta lista foi realizar a transição de interfaces estáticas (utilizando variáveis simples) para o uso de coleções de dados (`List`) e exibições dinâmicas na interface gráfica com Flutter. A progressão das atividades focou em estruturar dados, representá-los em listas roláveis e, finalmente, criar aplicações com adição e remoção dinâmica de itens.

## 🛠️ Conceitos Trabalhados

Durante o desenvolvimento destes exercícios, foram aplicados os seguintes conceitos:
*   **Listas e ListView:** Criação de `List<String>` e `List<Objeto>`, e apresentação utilizando `ListView` e `ListView.builder`.
*   **Estruturas de Repetição Visuais:** Uso do `itemCount`, `itemBuilder` e `index` para gerar elementos de interface sob demanda.
*   **Layout e Organização Visual:** Implementação de `Card` e `ListTile` para organizar as informações com `leading`, `title`, `subtitle` e `trailing`.
*   **Programação Orientada a Objetos:** Criação de classes modelo (como `Livro`, `Aluno` e `Produto`) para representar dados complexos.
*   **Gestão de Estado:** Manipulação de `StatefulWidget`, uso de funções como `add()` e `removeAt()` em coleções, validação de campos vazios (`isEmpty`) e atualização da interface gráfica através do `setState()`.

## 🚀 Exercícios Desenvolvidos

A lista contempla cinco projetos práticos. Todos seguem a estrutura solicitada no roteiro da atividade:

1.  **Lista de Linguagens:** Apresenta uma coleção fixa de oito linguagens de programação utilizando `ListView.builder` e `ListTile`.
2.  **Catálogo de Livros:** Implementa a classe `Livro` e renderiza os objetos dentro de `Cards`, exibindo título e autor.
3.  **Lista de Alunos:** Implementa a classe `Aluno` (nome e nota), exibindo as notas formatadas no subtítulo do `ListTile`.
4.  **Cadastro de Tarefas:** Aplicação interativa (estado dinâmico) que permite adicionar novas tarefas a uma lista via formulário e excluí-las clicando em um ícone de lixeira.
5.  **Estoque Simples:** O exercício mais completo. Instancia a classe `Produto` (nome, preço e quantidade). Permite o cadastro de novos itens por um formulário de três campos, os exibe formatados em `Cards` com ícones, permite a exclusão e implementa um aviso visual centralizado sempre que a lista de estoque encontra-se vazia.

## 🖥️ Como Executar

Para rodar qualquer um dos exercícios na sua máquina:

1.  Clone este repositório:
    ```bash
    git clone [https://github.com/MonzaShark/flutter-lista-2-exercicios-joao-alex-garcia.git](https://github.com/MonzaShark/flutter-lista-2-exercicios-joao-alex-garcia.git)
    ```
2.  Acesse a pasta do projeto escolhido (por exemplo, `exercicio5_estoque`).
3.  Atualize as dependências do Flutter:
    ```bash
    flutter pub get
    ```
4.  Execute a aplicação:
    ```bash
    flutter run
    ```
---
*Atividade desenvolvida por João Alex Garcia.*