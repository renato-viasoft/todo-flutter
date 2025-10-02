# Visão Geral

Este projeto foi desenvolvido como parte do processo seletivo para candidatos à vaga de **Desenvolvedor Flutter**.
Ele é composto por:

* **Front-End**: Aplicação em Flutter (foco principal do teste).
* **Back-End**: API mockada utilizando **JsonServer** para simulação do CRUD de tarefas.

O objetivo do desafio é avaliar a capacidade de implementar uma aplicação **TO-DO List** simples, consumindo os endpoints já disponíveis.

---

## Front-End

O desenvolvimento principal será feito em Flutter.
O candidato deverá:

1. **Listar tarefas** utilizando os endpoints da API.
2. **Cadastrar uma nova tarefa** integrando com o Back-End.

Essas duas funcionalidades são as **entregas mínimas esperadas**.
Caso o candidato queira, ele pode implementar funcionalidades adicionais (como edição ou remoção de tarefas). Esses recursos não são obrigatórios, mas os endpoints estão disponíveis justamente para permitir essa expansão.

### Tecnologias utilizadas

* **Flutter**: `3.35.4`
* **Dart**: `3.9.2`

### Executando o Front-End

No diretório `front`, execute:

```sh
flutter run
```

A aplicação deverá iniciar e consumir os endpoints disponibilizados pelo Back-End.

---

## Back-End

A API é fornecida através de um **JsonServer**, simulando as operações de CRUD.

### Pré-requisitos

* **Node.js** e **NPM** instalados na máquina.

### Executando o servidor

No diretório `back`, execute:

```sh
npx json-server -w db.json -p 8080
```

### Endpoints disponíveis

* **Listagem de tarefas**: `GET http://localhost:8080/tasks`
* **Busca de uma tarefa**: `GET http://localhost:8080/tasks/<id>`
* **Criação de uma tarefa**: `POST http://localhost:8080/tasks`
* **Edição de uma tarefa**: `PUT http://localhost:8080/tasks/<id>`
* **Remoção de uma tarefa**: `DELETE http://localhost:8080/tasks/<id>`

---

## Entregáveis esperados

* Implementação funcional da **listagem de tarefas**.
* Implementação funcional da **criação de uma nova tarefa**.
* Código organizado, legível e seguindo boas práticas de Flutter/Dart.
* Uso correto dos endpoints fornecidos.

Funcionalidades adicionais, como edição ou exclusão de tarefas, são opcionais e não obrigatórias.

---

## Observações

* O foco não é a complexidade, mas sim a clareza, boas práticas e capacidade de integrar Front-End com uma API.
* O candidato pode utilizar bibliotecas adicionais, desde que façam sentido para o escopo da aplicação.
