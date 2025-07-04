# 🛒 Müşteri, Ürün ve Sipariş Yönetim Uygulaması (Java Swing)

Bu proje, **Java Swing** kullanılarak geliştirilmiş bir masaüstü uygulamasıdır. Kullanıcıların müşteri, ürün ve sipariş işlemlerini gerçekleştirebilmesini sağlar. Basit ve kullanıcı dostu arayüzü ile küçük ve orta ölçekli satış süreçlerini takip etmeye olanak sunar.

---

## 🚀 Proje Amacı

Bu uygulama ile kullanıcılar;
- Müşteri bilgilerini yönetebilir,
- Ürünleri listeleyebilir, ekleyebilir ve stokları güncelleyebilir,
- Sipariş oluşturabilir, sipariş geçmişini görüntüleyebilir,
- Tüm bu işlemleri grafiksel kullanıcı arayüzü üzerinden rahatlıkla gerçekleştirebilir.

---

## 🖥️ Neden Java Swing Kullanıldı?

**Swing**, Java’da grafiksel kullanıcı arayüzü (GUI) oluşturmak için kullanılan bir kütüphanedir. Şu nedenlerle tercih edilmiştir:

- **Platform Bağımsızlığı:** Swing, işletim sistemi fark etmeksizin tüm platformlarda aynı görselliği ve davranışı sunar.
- **Zengin Bileşen Desteği:** Button, Label, Table, TextField gibi bileşenleri özelleştirerek kullanabiliriz.
- **Hafif ve Esnek:** Swing bileşenleri, AWT’nin aksine native (sistem bileşenlerine bağlı) değildir, bu da daha fazla özelleştirme imkanı sunar.
- **Kolay Geliştirme:** Java'nın nesne yönelimli yapısı sayesinde GUI bileşenleri rahatlıkla kontrol edilebilir.

Bu projede Swing kullanılarak:
- Müşteri, ürün ve sipariş yönetimi için pencereler (JFrame),
- Kullanıcı etkileşimleri için butonlar (JButton),
- Veri girişi için metin alanları (JTextField),
- Listeleme ve tablo görüntüleme (JTable) kullanılmıştır.

---

## ⚙️ Kullanılan Teknolojiler

- 🧩 Java SE 17
- 🖼️ Java Swing (GUI için)
- 🗃️ MySQL (Veritabanı)
- 🔌 JDBC (Veritabanı bağlantısı)
- 💻 IntelliJ IDEA (IDE)

---

## 🧪 Veritabanı Bağlantısı Hakkında

Java’nın kendi kütüphaneleri veritabanı bağlantısı için yeterli değildir. Bu nedenle veritabanına bağlanmak için **MySQL Connector/J** gibi bir JDBC sürücüsüne ihtiyaç duyulmuştur.

🔗 Bağlantı için gerekli JAR dosyası:  
👉 [https://dev.mysql.com/downloads/connector/j/](https://dev.mysql.com/downloads/connector/j/)

---

## 🧰 Veritabanı Scripti

Projeyle birlikte gelen `ordermanage.sql` dosyasını **MySQL Workbench**, **DBeaver** veya komut satırı üzerinden çalıştırarak veritabanı tablolarını oluşturabilirsiniz.

### 🔸 Oluşturulan Tablolar:

- **`customer`**: Müşteri bilgilerini tutar
- **`product`**: Ürün ve stok bilgileri
- **`cart`**: Sipariş detayları
- **`basket`**: Sepet içeriği
- **`user`**: Giriş yapan kullanıcı bilgileri

> ✅ Scripti çalıştırdıktan sonra veritabanınız otomatik olarak ayağa kalkacaktır.

---

## 📋 Uygulama Özellikleri

| Modül              | İşlevler                                                  |
|--------------------|-----------------------------------------------------------|
| 👤 Müşteri Yönetimi | Müşteri ekleme, silme, güncelleme                         |
| 📦 Ürün Yönetimi    | Ürün ekleme, silme, stok güncelleme                       |
| 🧾 Sipariş Yönetimi | Sipariş oluşturma, ürün seçimi, sipariş notu ekleme      |
| 🔔 Kullanıcı Uyarıları | Eksik bilgi, stok yetersizliği, işlem başarı bildirimleri |

---

## 💡 Kullanım Örneği

1. Uygulama başlatıldığında bir **giriş ekranı** açılır.
2. Giriş yapıldıktan sonra **yönetim paneli** kullanıcıya sunulur.
3. Yönetim paneli üzerinden aşağıdaki işlemler yapılabilir:

    - ✅ Yeni müşteri veya ürün ekleme
    - ✅ Sipariş oluşturma
    - ✅ Sipariş geçmişini görüntüleme

---

## 🛠️ Kurulum Adımları

1. Projeyi GitHub üzerinden klonlayın veya ZIP olarak indirin:
   ```bash
   git clone https://github.com/nalbantseymaa/order-management-system.git
2. MySQL veritabanı bağlantısı için gerekli olan mysql-connector-java-x.x.xx.jar dosyasını indirin ve projeye ekleyin:
   IntelliJ'de:
    - `File` > `Project Structure` > `Libraries` yolunu izleyin.
3. `ordermanage.sql` dosyasını MySQL Workbench veya DBeaver gibi bir araçla çalıştırarak veritabanını oluşturun.
4. `Database` sınıfındaki veritabanı bağlantı bilgilerini güncelleyin:
   ```java
   private final String DB_URL = "jdbc:mysql://localhost:3306/ordermanage";
   private final String DB_USERNAME = "your_database_username";
   private final String DB_PASSWORD = "your_database_password";
   ```
   🛠️ Bu değerleri kendi kullanıcı adı ve şifrenize göre güncellemeyi unutmayın.
5. Projeyi IntelliJ IDEA'da açın ve çalıştırın.
6. Uygulama çalıştığında giriş ekranı üzerinden kullanıcı bilgilerinizi girerek yönetim paneline erişin.
7. Müşteri, ürün ve sipariş işlemlerini gerçekleştirin.

## 🖼️ Ekran Görüntüleri

<table>
  <tr>
    <th>🔐 Giriş ekranı</th>
    <th>👤 Müşteri paneli</th>
  </tr>
  <tr>
    <td><img src="src/Ekran görüntüsü 2025-07-04 165352.png" width="400"/></td>
    <td><img src="src/Ekran görüntüsü 2025-07-04 165415.png" width="400"/></td>
  </tr>
  <tr>
    <th>🔍 Müşteri filtreleme</th>
    <th>➕ Müşteri ekleme</th>
  </tr>
  <tr>
    <td><img src="src/Ekran görüntüsü 2025-07-04 165523.png" width="400"/></td>
    <td><img src="src/Ekran görüntüsü 2025-07-04 165725.png" width="400"/></td>
  </tr>
  <tr>
    <th>📦 Ürün filtreleme</th>
    <th>📋 Müşteri tablosu</th>
  </tr>
  <tr>
    <td><img src="src/Ekran görüntüsü 2025-07-04 165832.png" width="400"/></td>
    <td><img src="src/Ekran görüntüsü 2025-07-04 165852.png" width="400"/></td>
  </tr>
  <tr>
    <th>📋 Ürün tablosu</th>
    <th>🧾 Sipariş paneli</th>
  </tr>
  <tr>
    <td><img src="src/Ekran görüntüsü 2025-07-04 165903.png" width="400"/></td>
    <td><img src="src/Ekran görüntüsü 2025-07-04 165940.png" width="400"/></td>
  </tr>
  <tr>
    <th>🧾 Sipariş oluşturma</th>
    <th>📑 Sipariş geçmişi</th>
  </tr>
  <tr>
    <td><img src="src/Ekran görüntüsü 2025-07-04 170116.png" width="400"/></td>
    <td><img src="src/Ekran görüntüsü 2025-07-04 170837.png" width="400"/></td>
  </tr>
</table>









