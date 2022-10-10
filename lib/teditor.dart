class Editor extends StatefulWidget {
  const Editor({Key? key}) : super(key: key);

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  // modal flags
  String program_mode;
  String mode;
  int hide_ship;
  String last_mode;
  int show_help;
  int show_data;
  int show_debug;
  int bounds_symmetrical;
  int field_i;
  int select_weapon_i;
  int edit_strings_weapon_i;
  int edit_strings_engine_i;
  int builtIn_hullMod_i;
  int builtIn_wing_i;
  int variant_hullMod_i;
  int skin_hullMod_i;
  int skin_engine_i;
  int variant_wing_i;
  int group_field_i;

  // mouse states
  int mouse_1;
  int drag_mirrored;
  int drag_nearest_i;
  int drag_counterpart_i;
  int mouse_2;
  double pan_start_x;
  double pan_start_y;
  double pan_start_mouse_x;
  double pan_start_mouse_y;
  double target_zpan_x;
  double target_zpan_y;
  double last_img_x;
  double last_img_y;
  int mouse_z;
  int selected_zoom_level;
  double target_sprite_scale;
  int weapon_lock_i;
  int engine_lock_i;

  // images
  Image bg_image;
  double bg_scale;
  Image kb_key_image;
  Image kb_key_wide_image;
  Image kb_key_space_image;
  Image mouse_left_image;
  Image mouse_right_image;
  Image mouse_middle_image;
  Image ico_dim;
  Image ico_pos;
  Image ico_ang;
  Image ico_zoom;
  Image ico_mirr;
  Image ico_exit;
  Image engineflame;
  Image engineflamecore;
  Image circle;

  // stock (and mod) data
  Map<String, dynamic> stock_ships; // <String,Object>  hullId --> TStarfarerShip
  Map<String, dynamic> stock_variants; // <String,Object>  variantId --> TStarfarerVariant
  Map<String, dynamic> stock_hull_variants_assoc; // <String,TList>   hullId --> TList of variantIds (referencing the hullId)
  Map<String, dynamic> stock_skins; // <String,Object>  skinHullId --> TStarfarerSkin
  Map<String, dynamic> stock_hull_skins_assoc; // <String,TList>   hullId --> TList of skinHullIds (referencing the hullId)
  Map<String, dynamic>
      stock_skins_variants_assoc; // <String,TList>   skinHullId --> TList of variantIds (referencing the hullId, not knowing it is a skinHullId)
  Map<String, dynamic> stock_weapons; // <String,Object>  weaponId --> TStarfarerWeapon
  Map<String, dynamic> stock_engine_styles; // <String,Object>  engine style spec id --> TStarfarerCustomEngineStyleSpec
  Map<String, dynamic> stock_ship_stats; // <String,TMap>    hullId --> TMap (csv columns --> values)
  Map<String, dynamic> stock_wing_stats; // <String,TMap>    wingId --> TMap (csv columns --> values)
  Map<String, dynamic> stock_variant_wing_stats_assoc; // <String,TList>   variantId --> TList of wingId (referencing the variantId)
  Map<String, dynamic> stock_weapon_stats; // <String,TMap>    weaponId --> TMap (csv columns --> values)
  Map<String, dynamic> stock_hullmod_stats; // <String,TMap>    hullmodId --> TMap (csv columns --> values)
  // metadata
  List<String> stock_ship_stats_field_order; // <String>  csv column (ordered)
  List<String> stock_wing_stats_field_order; // <String>  csv column (ordered)
  List<String> stock_weapon_stats_field_order; // <String>  csv column (ordered)
  int stock_hullmod_count;
  List<String> stock_hullmod_ids_sorted; // <String>  csv row id value
  //
  Map<String, dynamic> multiselect_values; // <String,TMap>     field (enum) --> [value set] (TMap <value,value>)

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Image {}
