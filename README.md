# FTB Generator - A generator for Flutter BLoC Architecture [![NPM version][npm-image]][npm-url] [![Build Status][travis-image]][travis-url] [![Dependency Status][daviddm-image]][daviddm-url] [![Coverage percentage][coveralls-image]][coveralls-url]

A simple, but powerful code generator for flutter projects using [bloc pattern](https://bloclibrary.dev/#/). There are some libs out there for organization purposes like [modular](https://github.com/Flutterando/modular), but on my case I didn't want make use of a lib that impose restrictions on the code level, because as the project grows, some restrictions have the potential to become a problem. The 
main objective of this project it's just speed up flutter development generating boilerplate code with a specific code organization structure. The code organization structure used on 
this generator was based on previous work of flutter community, but I encourage you to fork this project and make changes on the template folders to addapt to your specific needs or send pull requests
if your changes could improve the code organization for the majority of flutter developers.

## Inspiration

* Sebastian Faust work: https://github.com/devonfw-forge/devonfw4flutter-mts-app
* Conner Aldrich work: https://medium.com/flutter-community/flutter-code-organization-revised-b09ad5cef7f6
* Modular team work: https://github.com/Flutterando/modular#modular-structure

![Flutter BLoC Architecture](./assets/mts-architecture-dependencies-v5.png)

## Flutter Libraries Used

Dependencies on pubscpec.yaml:

```yaml
dependencies:
  flutter:
    sdk: flutter
  equatable: ^1.2.2
  bloc: ^6.0.1
  flutter_bloc: ^6.0.1
  easy_localization: ^2.3.2
  easy_localization_loader: ^0.0.2
```

It's also important put the translation files directory on your pubspec:

```yaml
flutter:
  assets:
    - assets/translations/
```

## Installation

First, install [Yeoman](http://yeoman.io) and generator-ftb using [npm](https://www.npmjs.com/) (we assume you have pre-installed [node.js](https://nodejs.org/)).

```bash
npm install -g yo
npm install -g generator-ftb
```

## Project Structure

On [./flutter_project_example](./flutter_project_example) you can find a flutter project example using the directory structure used on this generator. The project directory structure is combination of a component approach, a layered approach and tree like approach.

![Fluuter File Organization Approaches](./assets/flutter_possible_file_structures.png)

...

## Generating a New Project

```bash
yo ftb
```

...

## Generating a New Screen

```bash
yo ftb:screen
```

...

## Generating a New Component/Widget

```bash
yo ftb:screen
```

...

## Getting To Know Yeoman

 * Yeoman has a heart of gold.
 * Yeoman is a person with feelings and opinions, but is very easy to work with.
 * Yeoman can be too opinionated at times but is easily convinced not to be.
 * Feel free to [learn more about Yeoman](http://yeoman.io/).

## License

MIT


[npm-image]: https://badge.fury.io/js/generator-ftb.svg
[npm-url]: https://npmjs.org/package/generator-ftb
[travis-image]: https://travis-ci.com/marcoprado17/generator-ftb.svg?branch=master
[travis-url]: https://travis-ci.com/marcoprado17/generator-ftb
[daviddm-image]: https://david-dm.org/marcoprado17/generator-ftb.svg?theme=shields.io
[daviddm-url]: https://david-dm.org/marcoprado17/generator-ftb
[coveralls-image]: https://coveralls.io/repos/marcoprado17/generator-ftb/badge.svg
[coveralls-url]: https://coveralls.io/r/marcoprado17/generator-ftb
 