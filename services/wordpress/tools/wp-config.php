<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'jsubel' );

/** Database password */
define( 'DB_PASSWORD', 'Blueberry' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

// allows posts without revisions, maybe also comments?
define( 'WP_POST_REVISIONS', false );
/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'u#!%Plgla=u{#A h])5-#xi4/--p`ok>()a=x*+%V|kiJH2|tVoKO/u~Sh@;U,Q]');
define('SECURE_AUTH_KEY',  'aE+ =HQ8Ynusz!At6#O}2(q}Rhtto<tcu/w+OgTr9^l([%FqsvD @TDJxE2?mllS');
define('LOGGED_IN_KEY',    'R;D?%rl=rS[XyaCu@xhQ8*-R3i3N{eAjrbbjQwC$}8/i5US2X$[||F vWVRand]P');
define('NONCE_KEY',        'k7sp)7=$:RY/(%.i5CBVOBOIt) Wil!Op;N}y3b@VJ!s7m.&7+/Yb:+`Pk~+ ]54');
define('AUTH_SALT',        ' $to|*s: ||Ro[n:K5`W=ub rAGa5i-9!D9L;SHo)4,+;VbE$-Zu{ojDie$O7J:y');
define('SECURE_AUTH_SALT', 'UeL1KL+_?)he4mh24q,.FbE^d5_OvS/+htgnz>W^5Kdg|iDe@T?Oc=(FHI^=:nK<');
define('LOGGED_IN_SALT',   ',{(X*&Ebr~[WDbb+Rxz.;Eb|hLQ*R5c||X&]3 +i)Z*1|~zQc3ml4|,&v:quQ~b|');
define('NONCE_SALT',       'vk;twpWe#.3,:tM+bAOIbYS3aPar;v& TMJ8!kW7-j=%?O_EN>4jP[O;4FEV+7xg');
/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';