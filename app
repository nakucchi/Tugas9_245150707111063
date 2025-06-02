import java.nio.file.*;
import java.util.*;

public class App {
    public static void main(String[] args) throws Exception {
        Path dataDir  = Paths.get("data");
        Path csvFile  = dataDir.resolve("products.csv");
        InventoryService service = new InventoryService();

        // 1) Inisialisasi folder data
        service.initDataDirectory(dataDir);

        // 2) Load data dari CSV
        List<Product> products = service.loadProducts(csvFile);

        // 3) Jalankan menu interaktif
        service.runMenu(products);

        // 4) Simpan data kembali ke CSV sebelum keluar
        service.saveProducts(products, csvFile);
        System.out.println("Data disimpan. Program selesai.");
    }
}
