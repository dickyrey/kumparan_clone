import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:kumparan_clone/src/data/models/article_detail_model.dart';
import 'package:kumparan_clone/src/data/models/article_detail_response.dart';

import '../../helpers/json_reader.dart';

void main() {
  final articleDetailModel = ArticleDetailModel(
    url:
        'https://interpretasi.id/api/article/pajero-tni-tertimpa-truk-pasir-nyalakan-sirine-di-luar-jam-dinas-63cede361ef2b/pajero-tni-tertimpa-truk-pasir-nyalakan-sirine-di-luar-jam-dinas-63cede361ef2b',
    title: 'Pajero TNI Tertimpa Truk Pasir Nyalakan Sirine di Luar Jam Dinas',
    content:
        '<p><img src="https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01gmyh8mk2pn6g0jgkdhv8t0s5.jpg" alt="" width="100%" /></p><p>Kasus kecelakaan yang melibatkan truk pasir dan mobil dinas TNI Mitsubishi Pajero yang dikemudikan Brigjen TNI Eko Setyawan Airlangga di ruas Alternatif Cibubur, Depok, Jawa Barat berakhir damai.</p><p>Kapuspen TNI Laksamana Kisdiyanto mengungkapkan, sopir truk pasir itu mengaku sanggup untuk mengganti rugi kerusakan mobil dinas TNI.</p><p>"Kejadian tersebut telah dilaksanakan mediasi, di mana pemilik truk sanggup untuk mengganti kerusakan mobil Pajero," ujar Kisdiyanto saat dikonfirmasi, Senin (26/12).</p><p><img src="https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01gmyh8m8ecwp74qs4gtar46fg.jpg" alt="" width="100%" /></p><p>Di sisi lain, Brigjen Eko yang sempat diperiksa oleh Polisi Militer (POM) TNI telah dinyatakan tak melakukan pelanggaran.</p><p>Tidak ada pelanggaran, jadi tidak ada proses hukum. Peristiwa itu murni laka lalin di luar jam dinas dan Brigjen Eko adalah korban," kata dia.</p><div class="components__NormalWidth-sc-l308u-0 dypEwi" data-key="40"><div class="sc-5mlv5q-0 hZqCOq">&nbsp;</div></div><div class="components__NormalWidth-sc-l308u-0 dypEwi" data-key="42"><div class="Viewweb__StyledView-sc-1ajfkkc-0 bvuAuC track_paragraph" data-key="42"><div class="TextBoxweb__StyledTextBox-sc-18x3wcq-0 bKesRR"><span class="Textweb__StyledText-sc-1uxddwr-0 dTAOSs" data-qa-id="story-paragraph">Sebelumnya, kecelakaan tersebut terjadi saat mobil yang dikendarai Eko hendak memutar arah dengan menyalakan lampu sein den membunyikan sirene.</span></div></div></div><div class="components__NormalWidth-sc-l308u-0 dypEwi" data-key="45">&nbsp;</div><div class="components__NormalWidth-sc-l308u-0 dypEwi" data-key="49"><div class="Viewweb__StyledView-sc-1ajfkkc-0 bvuAuC track_paragraph" data-key="49"><div class="TextBoxweb__StyledTextBox-sc-18x3wcq-0 bKesRR"><span class="Textweb__StyledText-sc-1uxddwr-0 dTAOSs" data-qa-id="story-paragraph">Diduga karena terkejut mendengar sirene tersebut, sopir truk bernomor polisi B 9315 CYT itu tak bisa mengendalikan kendaraannya. Mobil menabrak beton di sisi kanan jalan hingga akhirnya menimpa mobil Eko.</span></div></div></div><div class="components__NormalWidth-sc-l308u-0 dypEwi" data-key="53"><div class="Viewweb__StyledView-sc-1ajfkkc-0 ehNVkT"><div class="Viewweb__StyledView-sc-1ajfkkc-0 getKDe" data-qa-id="desktop-article-page-inline-2">&nbsp;</div></div></div><div class="components__NormalWidth-sc-l308u-0 dypEwi" data-key="54"><div class="Viewweb__StyledView-sc-1ajfkkc-0 bvuAuC track_paragraph" data-key="54"><div class="TextBoxweb__StyledTextBox-sc-18x3wcq-0 bKesRR"><span class="Textweb__StyledText-sc-1uxddwr-0 dTAOSs" data-qa-id="story-paragraph">"Mitsubishi Pajero yang dikemudikan oleh Brigjen TNI Eko Setyawan Airlangga belok ke kanan dengan maksud putar balik dan menyalakan lampu sein dan membunyikan sirene, sehingga pengemudi kendaraan roda 4 truk yang akan menuju Cileungsi terkejut dan membanting setir ke kanan sehingga menabrak beton pembatas jalan," kata Kapuspen TNI Laksamana Muda TNI Kisdiyanto dalam keterangannya.</span></div></div></div><div class="components__NormalWidth-sc-l308u-0 dypEwi" data-key="65"><div class="Viewweb__StyledView-sc-1ajfkkc-0 bvuAuC track_paragraph" data-key="65"><div class="TextBoxweb__StyledTextBox-sc-18x3wcq-0 bKesRR"><span class="Textweb__StyledText-sc-1uxddwr-0 dTAOSs" data-qa-id="story-paragraph">Dalam peristiwa itu Eko tengah bersama istrinya, Rita. Keduanya berhasil dievakuasi dari dalam mobil oleh warga sekitar. Kisdiyanto memastikan Eko selamat dalam peristiwa itu. Dia hanya mengalami luka ringan.</span></div></div></div><div class="components__NormalWidth-sc-l308u-0 dypEwi" data-key="68"><div class="sc-5mlv5q-0 hZqCOq">&nbsp;</div></div><div class="components__NormalWidth-sc-l308u-0 dypEwi" data-key="69"><div class="Viewweb__StyledView-sc-1ajfkkc-0 bvuAuC track_paragraph" data-key="69"><div class="TextBoxweb__StyledTextBox-sc-18x3wcq-0 bKesRR"><span class="Textweb__StyledText-sc-1uxddwr-0 dTAOSs" data-qa-id="story-paragraph">"Brigjen TNI Eko Setyawan Airlangga mengalami luka ringan lecet di lengan sebelah kanan," katanya.</span></div></div></div><div class="components__NormalWidth-sc-l308u-0 dypEwi" data-key="72"><div class="sc-5mlv5q-0 hZqCOq">&nbsp;</div></div><div class="components__NormalWidth-sc-l308u-0 dypEwi" data-key="73"><div class="Viewweb__StyledView-sc-1ajfkkc-0 bvuAuC track_paragraph" data-key="73"><div class="TextBoxweb__StyledTextBox-sc-18x3wcq-0 bKesRR"><span class="Textweb__StyledText-sc-1uxddwr-0 dTAOSs" data-qa-id="story-paragraph">Sementara itu mobil yang dikemudikan Eko rusak parah. Kendaraan itu telah diamankan ke Satharpal Mabes TNI. Sedangkan truk diamankan di Unit Laka Lantas Polres Metro Depok.</span></div></div></div>',
    thumbnail:
        'https://asset.kompas.com/crops/L-YkSi6IQXxCguf_Dw_p6Ephqzc=/163x143:865x611/750x500/data/photo/2022/12/24/63a69928ea00d.png',
    viewers: 17,
    comments: 0,
    likes: 0,
    createdAt: DateTime.parse('2023-01-24 02:21:26'),
  );
  final articleDetailModelResult = ArticleDetailResponse(
    article: articleDetailModel,
  );

  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final jsonMap = json.decode(readJson('dummy_data/article_detail.json'))
          as Map<String, dynamic>;
      // act
      final result = ArticleDetailResponse.fromJson(jsonMap);
      // assert
      expect(result, articleDetailModelResult);
    });
  });
}
