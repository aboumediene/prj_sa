// wordpress/wp-config.php
define('DB_NAME', 'worddb');
define('DB_USER', 'moi');
define('DB_PASSWORD', 'aacher');
define('DB_HOST', 'mariadb'); // Correspond au service mariadb dans docker-compose
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');



// Préfixe des tables : changez si besoin
$table_prefix  = 'wp_';

// Debug mode : à désactiver en production
define('WP_DEBUG', false);
