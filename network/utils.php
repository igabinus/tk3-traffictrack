<?php

function hashText($text, $algo = "sha256", $raw_output = false) {
 if (!in_array($algo, hash_algos())) {
    throw new InvalidArgumentException("Invalid hashing algorithm: " . $algo);
  }

  return hash($algo, $text, $raw_output);
}

?>