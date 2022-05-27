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
[![License][license-shield]][license-url]



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
    <a href="https://github.com/21F0rc3/Smart-Lion-AI/">SmartLion AI</a>
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

<image src="https://user-images.githubusercontent.com/57480698/169343557-2c8f7fe8-c77a-4b4d-a913-31a2366671f0.gif" width=200>
<div>
<image src="https://user-images.githubusercontent.com/57480698/169344041-11b7b98e-1de3-4d1a-928a-421eff6c815d.png" width=200>
<image src="https://user-images.githubusercontent.com/57480698/169344122-ff7d52cb-c22e-44cd-8070-68ce1b0ae248.png" width=200>
<image src="https://user-images.githubusercontent.com/57480698/169344187-f88b4576-d7f5-494a-ab6e-2796b862aed9.png" width=200>
<image src="https://user-images.githubusercontent.com/57480698/169344256-5498f65b-bdf6-45df-871d-5e0c308f3db1.png" width=200>
<image src="https://user-images.githubusercontent.com/57480698/169344312-58d023d3-f1e3-4e99-a7fe-fd020741b7eb.png" width=200>
<image src="https://user-images.githubusercontent.com/57480698/169344348-c2fca4bc-952f-4d92-ac90-29cde13e2013.png" width=200>
<image src="https://user-images.githubusercontent.com/57480698/169344401-03f413ed-3f4f-4165-b752-869f040b1aaa.png" width=200>
<image src="https://user-images.githubusercontent.com/57480698/169344446-6ee3cd28-d1d4-4750-9645-d0d9175b2975.png" width=200>
<image src="https://user-images.githubusercontent.com/57480698/169344528-06a20946-e66f-4c7e-960b-24fef95de755.png" width=200>
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
[license-shield]: https://img.shields.io/github/license/fredmnpinto/smart_lion_mobile?style=for-the-badge
[license-url]: https://github.com/fredmnpinto/smart_lion_mobile/blob/master/LICENSE
