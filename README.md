# projeto-final
Projeto final do curso da udemy com Cucumber, Cabybara, SitePrism e habilitando o modo de relatórios.


### Instalando as gems necessarias

```shell    
	$ gem install cucumber
	$ gem install capybara
	$ gem install rspec
	$ gem install site_prism
	$ gem selenium-webdriver
```

> No arquive Gemfile

```shell    
	gem 'cucumber'
	gem 'capybara'
	gem 'rspec'
	gem 'site_prism'
	gem 'selenium-webdriver'
```

> Na pasta raiz do projeto

```shell    
	$ bundle install

	$ cucumber --init
```

> No arquivo features/support/env.rb

```shell    
	require 'capybara/cucumber'
```
