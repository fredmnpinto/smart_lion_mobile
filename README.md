# smart_lion_mobile

A Flutter project to integrate an IoT system on the disposal of used kitchen oil.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

  
## Descrição do projeto

Neste  projecto  os  alunos  irão  ter  oportunidade  de  trabalhar  com  várias  tecnologias, nomeadamente, sistemas inteligentes que combinam a utilização de tecnologias Internet of Things (IoT), classificadores usando Machine Learning (ML) e desenvolvimento de uma API de Backend (python flask ou go lang) e respectivo Frontend (app móvel - Flutter/Kotliin). 

O projeto envolve o desenvolvimento de um sistema inteligente para automatizar a recolha de Óleos Alimentares Usados (OAU) numa rede de oleões espalhados pelo país. No projeto irão ser utilizados 3 depósitos de recolha de OAU que já estão apetrechados com um micro-controlador ESP32 e vários sensores (cf. temperatura, fluxo, nível, turbidez) para recolher algumas das propriedades dos líquidos depositados. A informação recolhida é processada localmente e enviada através de um protocolo IoT para um servidor de Cloud (API backend). Os dados recolhidos serão posteriormente utilizados para treinar algoritmos de machine learning com o intuito de permitir distinguir futuros depósitos de líquidos usando a mesma arquitectura.

O sistema deverã ainda possuir uma app móvel que permite identificar univocamente os utilizadores que fazem os depósitos (e.g. usando BLE ou QR-codes) e que recebem pontos de fidelização por cada depósito válido (i.e. depósito de OAU). Para aferir a qualidade de cada depósito deverá utilizar-se os classificadores previamente treinados, que localmente irão determinar se o depósito é valido (cf. OAU) ou se não é válido (cf. contem percentagens significativas de água ou óleo de carro usado misturados).

O  sistema  deverá  ainda  possuir  uma  app  móvel  que  permite  identificar univocamente os utilizadores que fazem os depósitos (e.g. usando BLE ou QR-codes) e que recebem pontos de fidelização por cada depósitos válido (i.e. depósito de OAU). Para aferir  a  qualidade  de  cada  depósito  deverá  utilizar-se  os  classificadores  previamente treinados, que localmente irão determinar se o depósito é válido (cf. OAU) ou se não é válido (cf. contem percentagens significativas de água ou óleo de carro usado misturados 
