UnpackRat for Alfred
============

An shell extension to easily install/unpack open source libraries and frameworks from [Alfred App](http://alfredapp.com/). You will need Alfred and the Powerpack to use this.

Installation
----------------

To install UnpackRat in Alfred double click on the extension file.

How to use
----------------

Once installed with Alfred you can install packages by using the package Alfred keyword 'install' the package you want to install and the directory in which to install the package. If the directory specified does not exist, the script will attempt to create it for you. Examples below.

    install Package_ID ~/PATH/TO/INSTALL
    install ci ~/www/codeigniter
    install drupal7 ~/www/drupal7
    install wordpress ~/www/wp
    install jquery ~/www/codeigniter/assets
    install bootstrap ~/www/codeigniter/assets
 

Available Packages (Package_ID)
----------------
 * CodeIgniter (ci)
 * Wordpress (wordpress)
 * Drupal 6 (drupal6)
 * Drupal 7 (drupal7)
 * Drupal 8 (drupal8)
 * Laravel (laravel)
 * Zend Framework (zend)
 * Symfony (symfony)
 * CakePHP (cakephp)
 * YII (yii)
 * jQuery (jquery)
 * Underscore.js (underscore)
 * Backbone.js (backbone)
 * Bootstrap (bootstrap)
 * Blueprint (blueprint)
 * More to come (please fork and add others)
    

## Version History ##

### 1.0.0 - August 19, 2012
 * Commit: Initial Release
