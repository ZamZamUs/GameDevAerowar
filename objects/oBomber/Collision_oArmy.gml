// ==========================================
// OHELI - TABRAK DENGAN PLAYER (BENAR)
// ==========================================

// Panggil fungsi take_damage di player dengan type "crash"
with (oArmy) {
    take_damage("crash");
}

// Musuh hancur saat tabrak
instance_destroy();