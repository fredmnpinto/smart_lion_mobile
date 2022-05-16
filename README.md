<div id="top"></div>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/fredmnpinto/smart_lion_mobile">
    <img src="assets/images/smart-lion.jpg" alt="Logo" width="150" height="150">
  </a>

  <h3 align="center">Smart Lion Mobile</h3>

  <p align="center">
    A Flutter project to integrate an IoT system on the disposal of used kitchen oil.
    <br />
    <a href="https://github.com/fredmnpinto/smart_lion_mobile"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/21F0rc3/sl-api/">SmartLion API</a>
    ·
    <a href="https://github.com/fredmnpinto/smart_lion_mobile/">SmartLion Mobile</a>
    ·
    <a href="https://github.com/fredmnpinto/smart_lion_mobile/issues">Report Bug</a>
    ·
    <a href="https://github.com/fredmnpinto/smart_lion_mobile/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#authors">Authors</a>
    </li>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>
    <li><a href="#uiux">UI/UX</a></li>
  </ol>
</details>


### Authors:
- Gabriel Fernandes (40344@ufp.edu.pt)
- Frederico Pinto (39822@ufp.edu.pt)
  
## About The Project

Neste  projecto  os  alunos  irão  ter  oportunidade  de  trabalhar  com  várias  tecnologias, nomeadamente, sistemas inteligentes que combinam a utilização de tecnologias Internet of Things (IoT), classificadores usando Machine Learning (ML) e desenvolvimento de uma API de Backend (python flask ou go lang) e respectivo Frontend (app móvel - Flutter/Kotliin). 

O projeto envolve o desenvolvimento de um sistema inteligente para automatizar a recolha de Óleos Alimentares Usados (OAU) numa rede de oleões espalhados pelo país. No projeto irão ser utilizados 3 depósitos de recolha de OAU que já estão apetrechados com um micro-controlador ESP32 e vários sensores (cf. temperatura, fluxo, nível, turbidez) para recolher algumas das propriedades dos líquidos depositados. A informação recolhida é processada localmente e enviada através de um protocolo IoT para um servidor de Cloud (API backend). Os dados recolhidos serão posteriormente utilizados para treinar algoritmos de machine learning com o intuito de permitir distinguir futuros depósitos de líquidos usando a mesma arquitectura.

O sistema deverã ainda possuir uma app móvel que permite identificar univocamente os utilizadores que fazem os depósitos (e.g. usando BLE ou QR-codes) e que recebem pontos de fidelização por cada depósito válido (i.e. depósito de OAU). Para aferir a qualidade de cada depósito deverá utilizar-se os classificadores previamente treinados, que localmente irão determinar se o depósito é valido (cf. OAU) ou se não é válido (cf. contem percentagens significativas de água ou óleo de carro usado misturados).

O  sistema  deverá  ainda  possuir  uma  app  móvel  que  permite  identificar univocamente os utilizadores que fazem os depósitos (e.g. usando BLE ou QR-codes) e que recebem pontos de fidelização por cada depósitos válido (i.e. depósito de OAU). Para aferir  a  qualidade  de  cada  depósito  deverá  utilizar-se  os  classificadores  previamente treinados, que localmente irão determinar se o depósito é válido (cf. OAU) ou se não é válido (cf. contem percentagens significativas de água ou óleo de carro usado misturados 

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## UI/UX

<image src="https://user-images.githubusercontent.com/57480698/168495230-5c2113d9-2c00-43bf-9708-b8681b0dd9dd.gif" width=200>
<div>
<image src="https://user-images.githubusercontent.com/57480698/168495652-e8bfea55-7f46-4009-9de4-ef4c123f98da.jpg" width=200>
<image src="https://user-images.githubusercontent.com/57480698/168495655-cb06163e-c616-491f-b39e-27d3ba38ddfc.jpg" width=200>
<image src="https://user-images.githubusercontent.com/57480698/168495658-001fb368-6818-4ce8-982f-a82ba2da8875.jpg" width=200>
<image src="https://user-images.githubusercontent.com/57480698/168495662-ad7e2358-7ae7-459f-be5e-9e639eb3a2b5.jpg" width=200>
</div>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/fredmnpinto/smart_lion_mobile?style=for-the-badge
[contributors-url]: https://github.com/fredmnpinto/smart_lion_mobile/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/fredmnpinto/smart_lion_mobile?style=for-the-badge
[forks-url]: https://github.com/fredmnpinto/smart_lion_mobile/network/members
[stars-shield]: https://img.shields.io/github/stars/fredmnpinto/smart_lion_mobile?style=for-the-badge
[stars-url]: https://github.com/fredmnpinto/smart_lion_mobile/stargazers
[issues-shield]: https://img.shields.io/github/issues/fredmnpinto/smart_lion_mobile?style=for-the-badge
[issues-url]: https://github.com/fredmnpinto/smart_lion_mobile/issues
