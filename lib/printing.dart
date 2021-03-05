import 'package:intl/intl.dart';

class Printing{
  makeAlignCenterTitle(String value){
    if(value.length < 32){
      int valueSpaceLength =  47 - value.length;
      var valueLeftSpace = valueSpaceLength / 2;
      int valueLeftSpaceLength = valueLeftSpace.toInt();
      for(var v = 0; v < valueLeftSpaceLength; v++){
        value =  ' '+value;
      }
    }else if(value.length > 32){
      List _words = value.split(' ');
      String _makeAlign = "";
      int _validLength = 32;
      int _countofLineEntry = 1;
      for(var w = 0; w < _words.length; w++){
        _makeAlign = _makeAlign+' '+_words[w];
        if(_makeAlign.length > _validLength){
          _countofLineEntry++;
          _validLength = _validLength * _countofLineEntry;
          String _extraWord = _words[w];
          int _extraWordLength = _extraWord.length;
          _makeAlign = _makeAlign.substring(0, _makeAlign.length - _extraWordLength);
          _makeAlign = _makeAlign +'/n'+_extraWord;
        }
      }
      List _linse = _makeAlign.split('/n');
      String _textLine = '';
      // print(_makeAlign);
      for(var l = 0; l < _linse.length; l++) {
        String _runningLine = _linse[l];
        int valueSpaceLength =  47 - _runningLine.length;
        var valueLeftSpace = valueSpaceLength / 2;
        int valueLeftSpaceLength = valueLeftSpace.toInt();
        for(var v = 0; v < valueLeftSpaceLength; v++){
          _runningLine =  ' '+_runningLine;
        }
        _textLine = _textLine + _runningLine+'\n';
      }
      value = _textLine;
    }
    return value;
  }

  makeAlignCenter(String value){
    if(value.length < 47){
      int valueSpaceLength =  47 - value.length;
      var valueLeftSpace = valueSpaceLength / 2;
      int valueLeftSpaceLength = valueLeftSpace.toInt();
      for(var v = 0; v < valueLeftSpaceLength; v++){
        value =  ' '+value;
      }
    }else if(value.length > 47){
      List _words = value.split(' ');
      String _makeAlign = "";
      int _validLength = 47;
      int _countofLineEntry = 1;
      for(var w = 0; w < _words.length; w++){
        _makeAlign = _makeAlign+' '+_words[w];
        if(_makeAlign.length > _validLength){
          _countofLineEntry++;
          _validLength = _validLength * _countofLineEntry;
          String _extraWord = _words[w];
          int _extraWordLength = _extraWord.length;
          _makeAlign = _makeAlign.substring(0, _makeAlign.length - _extraWordLength);
          _makeAlign = _makeAlign +'/n'+_extraWord;
        }
      }
      List _linse = _makeAlign.split('/n');
      String _textLine = '';
      for(var l = 0; l < _linse.length; l++) {
        String _runningLine = _linse[l];
        int valueSpaceLength =  47 - _runningLine.length;
        var valueLeftSpace = valueSpaceLength / 2;
        int valueLeftSpaceLength = valueLeftSpace.toInt();
        for(var v = 0; v < valueLeftSpaceLength; v++){
          _runningLine =  ' '+_runningLine;
        }
        _textLine = _textLine + _runningLine+'\n';
      }
      value = _textLine;
    }
    return value;
  }

  makeAlignRight(String value){
    if(value.length < 47){
      int valueSpaceLength =  47 - value.length;
      for(var v = 0; v < valueSpaceLength; v++){
        value =  ' '+value;
      }
    }else if(value.length > 47){
      List _words = value.split(' ');
      String _makeAlign = "";
      int _validLength = 47;
      int _countofLineEntry = 1;
      for(var w = 0; w < _words.length; w++){
        _makeAlign = _makeAlign+' '+_words[w];
        if(_makeAlign.length > _validLength){
          _countofLineEntry++;
          _validLength = _validLength * _countofLineEntry;
          String _extraWord = _words[w];
          int _extraWordLength = _extraWord.length;
          _makeAlign = _makeAlign.substring(0, _makeAlign.length - _extraWordLength);
          _makeAlign = _makeAlign +'/n'+_extraWord;
        }
      }
      List _linse = _makeAlign.split('/n');
      String _textLine = '';
      for(var l = 0; l < _linse.length; l++) {
        String _runningLine = _linse[l];
        int valueSpaceLength =  47 - _runningLine.length;
        var valueLeftSpace = valueSpaceLength / 2;
        int valueLeftSpaceLength = valueLeftSpace.toInt();
        for(var v = 0; v < valueLeftSpaceLength; v++){
          _runningLine =  ' '+_runningLine;
        }
        _textLine = _textLine + _runningLine+'\n';
      }
      value = _textLine;
    }
    return value;
  }

  makeThreeColumnRow(String name, String qty, String price){

    int nameSpaceLength = name.length < 22 ? 22 - name.length : 0;
    int qtySpaceLength = qty.length < 7 ? 7 - qty.length : 0;
    int priceSpaceLength = price.length < 7 ? 7 - qty.length : 0;
    for(var n = 0; n < nameSpaceLength; n++){
      name = name + ' ';
    }
    for(var q = 0; q < qtySpaceLength; q++){
      qty = qty + ' ';
    }
    for(var p = 0; p < priceSpaceLength; p++){
      price =  ' '+price;
    }
    String _printLine = '  '+name+'   '+qty+'   '+price;
    return _printLine;
  }

  makeTwoColumnRow(String value1, String value2){

    int value1SpaceLength = value1.length < 20 ? 20 - value1.length : 0;
    int value2SpaceRight = value1.length < 20 ? 20 - value2.length : 0;

    for(var n = 0; n < value1SpaceLength; n++){
      value1 = value1 + ' ';
    }

    for(var p = 0; p < value2SpaceRight; p++){
      value2 =  ' '+value2;
    }
    String _printLine = '  '+value1+'    '+value2;
    return _printLine;
  }

  makeBorderLine(){
    String _line = '-';
    for(var bl = 0; bl < 45; bl++){
      _line = _line+'-';
    }
    return _line;
  }

  curentDate() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(now);
    return formatted;
  }

  createTime() {
    DateTime now = DateTime.now();
    String formattedTime = DateFormat.jm().format(now);
    return formattedTime;
  }

}

// _makeAlignCenterTitle(String value){
//   if(value.length < 32){
//     int valueSpaceLength =  47 - value.length;
//     var valueLeftSpace = valueSpaceLength / 2;
//     int valueLeftSpaceLength = valueLeftSpace.toInt();
//     for(var v = 0; v < valueLeftSpaceLength; v++){
//       value =  ' '+value;
//     }
//   }else if(value.length > 32){
//     List _words = value.split(' ');
//     String _makeAlign = "";
//     int _validLength = 32;
//     int _countofLineEntry = 1;
//     for(var w = 0; w < _words.length; w++){
//       _makeAlign = _makeAlign+' '+_words[w];
//       if(_makeAlign.length > _validLength){
//         _countofLineEntry++;
//         _validLength = _validLength * _countofLineEntry;
//         String _extraWord = _words[w];
//         int _extraWordLength = _extraWord.length;
//         _makeAlign = _makeAlign.substring(0, _makeAlign.length - _extraWordLength);
//         _makeAlign = _makeAlign +'/n'+_extraWord;
//       }
//     }
//     List _linse = _makeAlign.split('/n');
//     String _textLine = '';
//     // print(_makeAlign);
//     for(var l = 0; l < _linse.length; l++) {
//       String _runningLine = _linse[l];
//       int valueSpaceLength =  47 - _runningLine.length;
//       var valueLeftSpace = valueSpaceLength / 2;
//       int valueLeftSpaceLength = valueLeftSpace.toInt();
//       for(var v = 0; v < valueLeftSpaceLength; v++){
//         _runningLine =  ' '+_runningLine;
//       }
//       _textLine = _textLine + _runningLine+'\n';
//     }
//     value = _textLine;
//   }
//   return value;
// }
//
// _makeAlignCenter(String value){
//   if(value.length < 47){
//     int valueSpaceLength =  47 - value.length;
//     var valueLeftSpace = valueSpaceLength / 2;
//     int valueLeftSpaceLength = valueLeftSpace.toInt();
//     for(var v = 0; v < valueLeftSpaceLength; v++){
//       value =  ' '+value;
//     }
//   }else if(value.length > 47){
//     List _words = value.split(' ');
//     String _makeAlign = "";
//     int _validLength = 47;
//     int _countofLineEntry = 1;
//     for(var w = 0; w < _words.length; w++){
//       _makeAlign = _makeAlign+' '+_words[w];
//       if(_makeAlign.length > _validLength){
//         _countofLineEntry++;
//         _validLength = _validLength * _countofLineEntry;
//         String _extraWord = _words[w];
//         int _extraWordLength = _extraWord.length;
//         _makeAlign = _makeAlign.substring(0, _makeAlign.length - _extraWordLength);
//         _makeAlign = _makeAlign +'/n'+_extraWord;
//       }
//     }
//     List _linse = _makeAlign.split('/n');
//     String _textLine = '';
//     for(var l = 0; l < _linse.length; l++) {
//       String _runningLine = _linse[l];
//       int valueSpaceLength =  47 - _runningLine.length;
//       var valueLeftSpace = valueSpaceLength / 2;
//       int valueLeftSpaceLength = valueLeftSpace.toInt();
//       for(var v = 0; v < valueLeftSpaceLength; v++){
//         _runningLine =  ' '+_runningLine;
//       }
//       _textLine = _textLine + _runningLine+'\n';
//     }
//     value = _textLine;
//   }
//   return value;
// }
//
// _makeAlignRight(String value){
//   if(value.length < 47){
//     int valueSpaceLength =  47 - value.length;
//     for(var v = 0; v < valueSpaceLength; v++){
//       value =  ' '+value;
//     }
//   }else if(value.length > 47){
//     List _words = value.split(' ');
//     String _makeAlign = "";
//     int _validLength = 47;
//     int _countofLineEntry = 1;
//     for(var w = 0; w < _words.length; w++){
//       _makeAlign = _makeAlign+' '+_words[w];
//       if(_makeAlign.length > _validLength){
//         _countofLineEntry++;
//         _validLength = _validLength * _countofLineEntry;
//         String _extraWord = _words[w];
//         int _extraWordLength = _extraWord.length;
//         _makeAlign = _makeAlign.substring(0, _makeAlign.length - _extraWordLength);
//         _makeAlign = _makeAlign +'/n'+_extraWord;
//       }
//     }
//     List _linse = _makeAlign.split('/n');
//     String _textLine = '';
//     for(var l = 0; l < _linse.length; l++) {
//       String _runningLine = _linse[l];
//       int valueSpaceLength =  47 - _runningLine.length;
//       var valueLeftSpace = valueSpaceLength / 2;
//       int valueLeftSpaceLength = valueLeftSpace.toInt();
//       for(var v = 0; v < valueLeftSpaceLength; v++){
//         _runningLine =  ' '+_runningLine;
//       }
//       _textLine = _textLine + _runningLine+'\n';
//     }
//     value = _textLine;
//   }
//   return value;
// }
//
// _makeThreeColumnRow(String name, String qty, String price){
//
//   int nameSpaceLength = name.length < 22 ? 22 - name.length : 0;
//   int qtySpaceLength = qty.length < 7 ? 7 - qty.length : 0;
//   int priceSpaceLength = price.length < 7 ? 7 - qty.length : 0;
//   for(var n = 0; n < nameSpaceLength; n++){
//     name = name + ' ';
//   }
//   for(var q = 0; q < qtySpaceLength; q++){
//     qty = qty + ' ';
//   }
//   for(var p = 0; p < priceSpaceLength; p++){
//     price =  ' '+price;
//   }
//   String _printLine = '  '+name+'   '+qty+'   '+price;
//   return _printLine;
// }
//
// _makeTwoColumnRow(String value1, String value2){
//
//   int value1SpaceLength = value1.length < 20 ? 20 - value1.length : 0;
//   int value2SpaceRight = value1.length < 20 ? 20 - value2.length : 0;
//
//   for(var n = 0; n < value1SpaceLength; n++){
//     value1 = value1 + ' ';
//   }
//
//   for(var p = 0; p < value2SpaceRight; p++){
//     value2 =  ' '+value2;
//   }
//   String _printLine = '  '+value1+'    '+value2;
//   return _printLine;
// }
//
// _makeBorderLine(){
//   String _line = '-';
//   for(var bl = 0; bl < 45; bl++){
//     _line = _line+'-';
//   }
//   return _line;
// }
//
// _curentDate() {
//   DateTime now = DateTime.now();
//   DateFormat formatter = DateFormat('dd-MM-yyyy');
//   final String formatted = formatter.format(now);
//   return formatted;
// }
//
// _createTime() {
//   DateTime now = DateTime.now();
//   String formattedTime = DateFormat.jm().format(now);
//   return formattedTime;
// }

// void testReceipt(NetworkPrinter printer) {
//   printer.text("             123 Star Road");
//   printer.text("           City, State 12345\n");
//   printer.text("Date:MM/DD/YYYY          Time:HH:MM PM");
//   printer.text("--------------------------------------");
//   printer.text("SALE\n");
//   printer.text("SKU            Description       Total");
//   printer.text("300678566      PLAIN T-SHIRT     10.99");
//   printer.text("300692003      BLACK DENIM       29.99");
//   printer.text("300651148      BLUE DENIM        29.99");
//   printer.text("300642980      STRIPED DRESS     49.99\n");
//   printer.text("Subtotal                        156.95");
//   printer.text("Tax                               0.00");
//   printer.text("--------------------------------------");
//   printer.text("Total                           156.95");
//   printer.text("--------------------------------------\n");
//   printer.text("Charge");
//   printer.text("156.95");
//   printer.text("Visa XXXX-XXXX-XXXX-0123");
//   printer.text("Refunds and Exchanges");
//   printer.text("Within 30 days with receipt");
//   printer.text("And tags attached");
//   printer.text("              Thank You");
//   printer.text("01234567890123456789012345678901234567890123456");
//   printer.feed(2);
//   printer.cut();
//   printer.disconnect();
// }

// void testReceiptDynamic(NetworkPrinter printer) {
//   printer.text('${_makeAlignCenterTitle('123 Star Road City, State 12345 123 Star Road City, State 12345')}\n');
//   printer.text("  Date:${_curentDate()}              Time:${_createTime()}");
//   printer.text("SALE\n");
//   printer.text(_makeBorderLine());
//   printer.text(_makeThreeColumnRow('Name','QTY','Price'));
//   for(var i = 0; i < 4; i++){
//     printer.text(_makeThreeColumnRow('PLAIN T-SHIRT','2pcs','10.99'));
//   }
//   printer.text(_makeTwoColumnRow('Subtotal','156.95'));
//   printer.text(_makeTwoColumnRow('Tax','0.00'));
//   printer.text(_makeBorderLine());
//   printer.text(_makeTwoColumnRow('Total','156.95'));
//   printer.text(_makeBorderLine());
//   printer.text("Charge");
//   printer.text("156.95");
//   printer.text("Visa XXXX-XXXX-XXXX-0123");
//   printer.text("Refunds and Exchanges");
//   printer.text("Within 30 days with receipt");
//   printer.text(_makeAlignRight('And tags attached'));
//   printer.text(_makeAlignCenter('Thank You'));
//   printer.text("01234567890123456789012345678901234567890123456\n\n\n");
//   printer.feed(2);
//   printer.cut();
//   printer.disconnect();
// }