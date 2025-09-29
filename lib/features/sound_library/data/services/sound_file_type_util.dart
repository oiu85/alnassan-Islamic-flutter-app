/// Enum representing different sound file types
enum SoundFileType {
  audio,      // Standard audio files (mp3, wav, etc.)
  realMedia,  // RealMedia files (.rm, .ra)
  compressed, // Compressed files (.zip, .rar, etc.)
  unknown     // Unknown file type
}

/// Utility class for handling different sound file types
class SoundFileTypeUtil {

  /// Checks if a file is a standard audio file
  static bool isAudioFile(String? fileName) {
    if (fileName == null) return false;
    
    final audioExtensions = [
      '.mp3', '.wav', '.ogg', '.aac', '.m4a', 
      '.flac', '.wma', '.opus', '.amr'
    ];
    
    return audioExtensions.any((ext) => fileName.toLowerCase().endsWith(ext));
  }

  /// Checks if a file is a RealMedia file
  static bool isRealMediaFile(String? fileName) {
    if (fileName == null) return false;
    
    final realMediaExtensions = ['.rm', '.ra', '.ram', '.rmvb'];
    
    return realMediaExtensions.any((ext) => fileName.toLowerCase().endsWith(ext));
  }

  /// Checks if a file is a compressed file
  static bool isCompressedFile(String? fileName) {
    if (fileName == null) return false;
    
    final compressedExtensions = [
      '.rar', '.zip', '.7z', '.tar', '.gz', 
      '.bz2', '.xz', '.tgz'
    ];
    
    return compressedExtensions.any((ext) => fileName.toLowerCase().endsWith(ext));
  }

  /// Gets the file type based on file name
  static SoundFileType getFileType(String? fileName) {
    if (fileName == null) return SoundFileType.unknown;
    
    if (isAudioFile(fileName)) {
      return SoundFileType.audio;
    } else if (isRealMediaFile(fileName)) {
      return SoundFileType.realMedia;
    } else if (isCompressedFile(fileName)) {
      return SoundFileType.compressed;
    } else {
      return SoundFileType.unknown;
    }
  }

  /// Gets a user-friendly description of the file type
  static String getFileTypeDescription(String? fileName) {
    final fileType = getFileType(fileName);
    
    switch (fileType) {
      case SoundFileType.audio:
        return 'ملف صوتي';
      case SoundFileType.realMedia:
        return 'ملف ريل ميديا';
      case SoundFileType.compressed:
        return 'ملف مضغوط';
      case SoundFileType.unknown:
        return 'ملف غير معروف';
    }
  }

  /// Checks if a file can be played in the app
  static bool canPlayFile(String? fileName) {
    if (fileName == null) return false;
    
    // Both audio files and RealMedia files can be played
    return isAudioFile(fileName) || isRealMediaFile(fileName);
  }

  /// Gets the appropriate icon for the file type
  static String getFileIcon(String? fileName) {
    final fileType = getFileType(fileName);
    
    switch (fileType) {
      case SoundFileType.audio:
        return 'audio_file'; // Icon name
      case SoundFileType.realMedia:
        return 'real_media_file'; // Icon name
      case SoundFileType.compressed:
        return 'archive'; // Icon name
      case SoundFileType.unknown:
        return 'unknown_file'; // Icon name
    }
  }
}
