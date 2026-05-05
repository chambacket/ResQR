<?php

/**
 * CodeIgniter 4 Root entry point for InfinityFree
 */

// Define the path to the public/index.php file
$publicIndex = __DIR__ . DIRECTORY_SEPARATOR . 'public' . DIRECTORY_SEPARATOR . 'index.php';

if (file_exists($publicIndex)) {
    require $publicIndex;
} else {
    echo "Error: The 'public/index.php' file could not be found. Please ensure you uploaded the 'public' folder correctly.";
}
