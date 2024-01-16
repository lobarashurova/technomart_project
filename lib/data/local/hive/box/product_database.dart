import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:technomart_project/data/local/hive/model/product_model_hive.dart';

class ProductDatabase{
  static int version = 1;
  static String dbName = 'Product.db';

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    Hive.registerAdapter(ProductModelHiveAdapter());
    await Hive.openBox<ProductModelHive>("Products");
  }
  static final  box=Hive.box<ProductModelHive>("Products");

}