import 'dart:io';
import 'dart:convert';

void main() async {
  const directoryPath = 'lib/l10n/component';
  const outputPath = 'lib/l10n';
  const locales = ['ja', 'en']; // 対象とするロケール

  for (var locale in locales) {
    final files = Directory(directoryPath)
        .listSync(recursive: true)
        .where((item) => item.path.endsWith('$locale.arb'));

    final Map<String, dynamic> mergedContent = {};

    for (var file in files) {
      final content = json.decode(await File(file.path).readAsString())
          as Map<String, dynamic>;
      mergedContent.addAll(content);
    }

    // ファイルが存在する場合は削除
    final outputFile = File('$outputPath/$locale.arb');
    if (await outputFile.exists()) {
      await outputFile.delete();
    }
    // JsonEncoder.withIndentを使用して整形されたJSONを書き込む
    final encoder = JsonEncoder.withIndent('  ');
    await outputFile.writeAsString(encoder.convert(mergedContent));
  }
}
