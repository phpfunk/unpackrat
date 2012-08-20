Q="{query}"
Q=${Q//\~/$HOME}

#CodeIgniter
if [[ $Q == ci* ]]
then
	DIR=${Q//ci\\ /}
	F="license.txt"
	APP="CodeIgniter"
	TEXT="installed"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L https://github.com/EllisLab/CodeIgniter/zipball/develop > CI.zip ; unzip -qq CI.zip ; rm CI.zip ; cd *-CodeIgniter* ; mv * .. ; cd .. ; rm -R *-CodeIgniter-*

#WordPress
elif [[ $Q == wordpress* ]]
then
	DIR=${Q//wordpress\\ /}
	F="license.txt"
	APP="WordPress"
	TEXT="installed"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L http://wordpress.org/latest.zip > wordpress.zip ; unzip -qq wordpress.zip ; cd wordpress ; mv * .. ; cd .. ; rm -R wordpress*

#Drupal6
elif [[ $Q == drupal6* ]]
then
	DIR=${Q//drupal6\\ /}
	F="LICENSE.txt"
	APP="Drupal 6"
	TEXT="installed"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L https://github.com/drupal/drupal/zipball/6.x > drupal.zip ; unzip -qq drupal.zip ; rm drupal.zip ; cd *-drupal-* ; mv * .. ; cd .. ; rm -R *-drupal-*

#Drupal7
elif [[ $Q == drupal7* ]]
then
	DIR=${Q//drupal7\\ /}
	F="LICENSE.txt"
	APP="Drupal 7"
	TEXT="installed"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L https://github.com/drupal/drupal/zipball/7.x > drupal.zip ; unzip -qq drupal.zip ; rm drupal.zip ; cd *-drupal-* ; mv * .. ; cd .. ; rm -R *-drupal-*

#Drupal8
elif [[ $Q == drupal8* ]]
then
	DIR=${Q//drupal8\\ /}
	F="README.txt"
	APP="Drupal 8"
	TEXT="installed"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L https://github.com/drupal/drupal/zipball/8.x > drupal.zip ; unzip -qq drupal.zip ; rm drupal.zip ; cd *-drupal-* ; mv * .. ; cd .. ; rm -R *-drupal-*

#Symfony
elif [[ $Q == symfony* ]]
then
	DIR=${Q//symfony\\ /}
	F="LICENSE"
	APP="Symfony"
	TEXT="installed"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L https://github.com/symfony/symfony/zipball/master > symfony.zip ; unzip -qq symfony.zip ; rm symfony.zip ; cd *-symfony-* ; mv * .. ; cd .. ; rm -R *-symfony-*

#Laravel
elif [[ $Q == laravel* ]]
then
	DIR=${Q//laravel\\ /}
	F="license.txt"
	APP="Laravel"
	TEXT="installed"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L https://github.com/laravel/laravel/zipball/master > laravel.zip ; unzip -qq laravel.zip ; rm laravel.zip ; cd *-laravel-* ; mv * .. ; cd .. ; rm -R *-laravel-*

#Zend Framework
elif [[ $Q == zend* ]]
then
	DIR=${Q//zend\\ /}
	F="LICENSE.txt"
	APP="Zend Framework"
	TEXT="installed"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L https://github.com/zendframework/zf2/zipball/master > zend.zip ; unzip -qq zend.zip ; rm zend.zip ; cd *-zf2-* ; mv * .. ; cd .. ; rm -R *-zf2-*

#CakePHP
elif [[ $Q == cakephp* ]]
then
	DIR=${Q//cakephp\\ /}
	F="index.php"
	APP="CakePHP"
	TEXT="installed"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L https://github.com/cakephp/cakephp/zipball/master > cake.zip ; unzip -qq cake.zip ; rm cake.php ; cd *-cakephp-* ; mv * .. ; cd .. ; rm -R *-cakephp-*

#YII
elif [[ $Q == yii* ]]
then
	DIR=${Q//yii\\ /}
	F="README"
	APP="YII"
	TEXT="installed"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L https://github.com/yiisoft/yii/zipball/master > yii.zip ; unzip -qq yii.zip ; rm yii.zip ; cd *-yii-* ; mv * .. ; cd .. ; rm -R *-yii-*

#Rails
elif [[ $Q == rails* ]]
then
	DIR=${Q//rails\\ /}
	F="Rakefile"
	APP="Rails"
	TEXT="installed"
	rails new "$DIR" --quiet > /dev/null 2>&1 ; cd "$DIR"

#jQuery
elif [[ $Q == jquery* ]]
then
	DIR=${Q//jquery\\ /}
	F="jquery-min.js"
	APP="jQuery"
	TEXT="downloaded"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L http://code.jquery.com/jquery.min.js > jquery-min.js

#Underscore.js
elif [[ $Q == underscore* ]]
then
	DIR=${Q//underscore\\ /}
	F="underscore-min.js"
	APP="Underscore.js"
	TEXT="downloaded"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L http://underscorejs.org/underscore-min.js > underscore-min.js

#Backbone.js
elif [[ $Q == backbone* ]]
then
	DIR=${Q//backbone\\ /}
	F="backbone-min.js"
	APP="Backbone.js"
	TEXT="downloaded"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L http://backbonejs.org/backbone-min.js > backbone-min.js

#bootstrap
elif [[ $Q == bootstrap* ]]
then
	DIR=${Q//bootstrap\\ /}
	F="bootstrap.zip"
	APP="Boostrap"
	TEXT="unpacked"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L https://github.com/twitter/bootstrap/zipball/master > bootstrap.zip ; unzip -qq bootstrap.zip ; rm bootstrap.zip ; cd *-bootstrap-* ; mv * .. ; cd .. ; rm -R *-bootstrap-*

#blueprint
elif [[ $Q == blueprint* ]]
then
	DIR=${Q//blueprint\\ /}
	F="Rakefile"
	APP="Blueprint"
	TEXT="unpacked"
	mkdir -p "$DIR" ; cd "$DIR" ; curl -silent -L http://github.com/joshuaclayton/blueprint-css/zipball/master > blueprint.zip ; unzip -qq blueprint.zip ; rm blueprint.zip ; cd *-blueprint-* ; mv * .. ; cd .. ; rm -R *-blueprint-*


else
	DIR="NOWHERE"
	F="NO FILE"
	APP="NOTHING"
	TEXT="INSTALLED"
fi

if [ -e $F ]
then
	echo "$APP has been $TEXT to $DIR"
else
	echo "$APP could not be $TEXT to $DIR"
fi