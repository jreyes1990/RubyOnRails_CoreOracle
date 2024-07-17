# USO DE YARN
## SB-ADMINS-2 
### URL: https://yarnpkg.com/package/startbootstrap-sb-admin-2
    yarn add startbootstrap-sb-admin-2

## POPPER
### URL: https://yarnpkg.com/package/@popperjs/core
    yarn add @popperjs/core

## DATATABLES.NET
### URL: https://yarnpkg.com/package/datatables.net
    yarn add datatables.net

## DATATABLES.NET-BUTTONS-BS4
### URL: https://yarnpkg.com/package/datatables.net-buttons-bs4
    yarn add datatables.net-buttons-bs4

## PDFMAKE
### URL: https://yarnpkg.com/package/pdfmake
    yarn add pdfmake

## SELECT2-BOOTSTRAP4
### URL: https://yarnpkg.com/package/@ttskch/select2-bootstrap4-theme
    yarn add @ttskch/select2-bootstrap4-theme

## INSTALACION REDIS
### URL: https://stackoverflow.com/questions/58918869/ruby-on-rails-operation-now-in-progress-connect2-would-block
#### Use Redis adapter to run Action Cable in production
    gem 'redis', '~> 4.0'

## STIMULUS-REFLEX
### URL: https://github.com/stimulusreflex/stimulus_reflex
### URL: https://docs.stimulusreflex.com/hello-world/quickstart
### URL: https://www.headway.io/blog/a-future-for-rails-stimulusreflex
    gem "stimulus_reflex", "~> 3.4"

### URL https://docs.stimulusreflex.com/hello-world/setup
    yarn add stimulus_reflex

## SWEETALERT2
### URL VIDEO: https://www.youtube.com/watch?v=Nwy4c57hibM
### URL: https://sweetalert2.github.io/
### URL: https://codigonautas.com/creacion-de-bonitos-mensajes-emergentes-con-sweetalert2/
    yarn add sweetalert2

#### GENERAR STIMULUS_REFLEX PARA SWEETALERT2
    rails generate stimulus_reflex sweetalert

## ROW-GROUPING
### URL: https://yarnpkg.com/package/datatables.net-rowgroup-bs4
### URL: https://cdn.datatables.net/
    yarn add datatables.net-rowgroup-bs4@1.2.0

## DATATABLE-RESPONSIVE
### URL: https://www.youtube.com/watch?v=HIDn_HpEuEQ
#### Se instalo datatables.net-responsive-bs4 para tener una tabla responsiva
    yarn add datatables.net-responsive-bs4

## BOOTSTRAP-POPOVER-TOOLTIP
### URL: https://github.com/andreivictor/bootstrap-tooltip-custom-class
    yarn add bootstrap-tooltip-custom-class

## GENERAR ACTION_TEXT
### URL: https://bswan0002.medium.com/how-to-set-up-action-text-rich-text-editor-in-rails-6-ab91be81e647
    rails action_text:install
    rails active_storage:install

### INSTALACIÓN PAQUETES PARA ACTION_TEXT
    sudo apt-get -y install imagemagick
    sudo apt-get -y install libmagic-dev
    sudo apt-get -y install libmagickwand-dev

### DROPZONE.JS
### URL VIDEO: https://www.youtube.com/watch?v=fg_8qJ-su6A
    yarn add dropzone

#### INSTALACIÓN ACTIVE_STORAGE
    rails active_storage:install

#### MIGRATIONS
    rails db:migrate

#### GENERAR STIMULUS_REFLEX PARA DROPZONE
    rails generate stimulus_reflex dropzone

## GENERA ANOTACIONES
### URL: https://github.com/ctran/annotate_models
#### Agregue un comentario que resuma el esquema actual en la parte superior o inferior
    gem 'annotate'

## MANEJO DE FOTOGRAFIAS
### URL:  https://github.com/carrierwaveuploader/carrierwave
    gem 'carrierwave'

## MANEJO DE SESIONES
### URL: https://www.rubydoc.info/gems/activerecord-session_store/2.0.0
    gem 'activerecord-session_store'

## ICONOS FONTAWESOME (FREE)
### URL: https://www.rubydoc.info/gems/font_awesome5_rails/1.5.0
#### Esta gema proporciona solo íconos gratuitos de Font-Awesome
    gem 'font_awesome5_rails'

## FORMULARIO SIMPLE-FORMS
### URL: https://github.com/heartcombo/simple_form
#### Simple Form tiene como objetivo ser lo más flexible posible mientras lo ayuda con componentes poderosos para crear sus formularios.
    gem 'simple_form'

## GENERA ARCHIVOS EXISTENTES
### URL: https://www.rubydoc.info/gems/seed_dump/3.3.1
#### Le permite crear archivos de datos iniciales a partir de los datos existentes en su base de datos.
    gem 'seed_dump'



# USO DE DEVISE
## DEVISE
### URL: https://makeitrealcamp.gitbook.io/ruby-on-rails-5/8-devise
### URL: https://github.com/heartcombo/devise
### Intalación devise
    rails generate devise:install

### Generación modelo devise
    rails generate devise User user_created_id:integer user_updated_id:integer estado:string{10}

### Generación controller devise
    rails generate devise:controllers users

### Generación views devise
    rails generate devise:views