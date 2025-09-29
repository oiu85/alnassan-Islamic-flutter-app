import 'dart:io';

void main(List<String> arguments) {
  // التحقق إذا تم تمرير اسم الـ feature
  if (arguments.isEmpty) {
    print('يرجى تمرير اسم الـ feature كمحدد');
    return;
  }

  final featureName = arguments[0]; // اسم الـ feature الذي تم تمريره
  final featurePath = 'lib/features/$featureName'; // المسار داخل lib/features
  print('إنشاء الهيكل للـ feature: $featureName');

  // المجلدات التي سيتم إنشاؤها
  final dirs = [
    'data',
    'domain',
    'presentation/bloc',
    'presentation/pages',
    'presentation/widgets',
    'di',
  ];

  // إنشاء المجلدات داخل lib/features/<اسم الـ feature>
  for (var dir in dirs) {
    final dirPath = '$featurePath/$dir';
    Directory(dirPath).createSync(recursive: true);
    print('تم إنشاء المجلد: $dirPath');
  }
}
