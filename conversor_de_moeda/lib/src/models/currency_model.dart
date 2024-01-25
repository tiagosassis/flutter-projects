class CurrencyModel {
  Data? data;

  CurrencyModel({this.data});

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  double? aUD;
  double? bGN;
  double? bRL;
  double? cAD;
  double? cHF;
  double? cNY;
  double? cZK;
  double? dKK;
  double? eUR;
  double? gBP;
  double? hKD;
  double? hRK;
  double? hUF;
  double? iDR;
  double? iLS;
  double? iNR;
  double? iSK;
  double? jPY;
  double? kRW;
  double? mXN;
  double? mYR;
  double? nOK;
  double? nZD;
  double? pHP;
  double? pLN;
  double? rON;
  double? rUB;
  double? sEK;
  double? sGD;
  double? tHB;
  double? tRY;
  int? uSD;
  double? zAR;

  Data(
      {this.aUD,
      this.bGN,
      this.bRL,
      this.cAD,
      this.cHF,
      this.cNY,
      this.cZK,
      this.dKK,
      this.eUR,
      this.gBP,
      this.hKD,
      this.hRK,
      this.hUF,
      this.iDR,
      this.iLS,
      this.iNR,
      this.iSK,
      this.jPY,
      this.kRW,
      this.mXN,
      this.mYR,
      this.nOK,
      this.nZD,
      this.pHP,
      this.pLN,
      this.rON,
      this.rUB,
      this.sEK,
      this.sGD,
      this.tHB,
      this.tRY,
      this.uSD,
      this.zAR});

  Data.fromJson(Map<String, dynamic> json) {
    aUD = json['AUD'];
    bGN = json['BGN'];
    bRL = json['BRL'];
    cAD = json['CAD'];
    cHF = json['CHF'];
    cNY = json['CNY'];
    cZK = json['CZK'];
    dKK = json['DKK'];
    eUR = json['EUR'];
    gBP = json['GBP'];
    hKD = json['HKD'];
    hRK = json['HRK'];
    hUF = json['HUF'];
    iDR = json['IDR'];
    iLS = json['ILS'];
    iNR = json['INR'];
    iSK = json['ISK'];
    jPY = json['JPY'];
    kRW = json['KRW'];
    mXN = json['MXN'];
    mYR = json['MYR'];
    nOK = json['NOK'];
    nZD = json['NZD'];
    pHP = json['PHP'];
    pLN = json['PLN'];
    rON = json['RON'];
    rUB = json['RUB'];
    sEK = json['SEK'];
    sGD = json['SGD'];
    tHB = json['THB'];
    tRY = json['TRY'];
    uSD = json['USD'];
    zAR = json['ZAR'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['AUD'] = aUD;
    data['BGN'] = bGN;
    data['BRL'] = bRL;
    data['CAD'] = cAD;
    data['CHF'] = cHF;
    data['CNY'] = cNY;
    data['CZK'] = cZK;
    data['DKK'] = dKK;
    data['EUR'] = eUR;
    data['GBP'] = gBP;
    data['HKD'] = hKD;
    data['HRK'] = hRK;
    data['HUF'] = hUF;
    data['IDR'] = iDR;
    data['ILS'] = iLS;
    data['INR'] = iNR;
    data['ISK'] = iSK;
    data['JPY'] = jPY;
    data['KRW'] = kRW;
    data['MXN'] = mXN;
    data['MYR'] = mYR;
    data['NOK'] = nOK;
    data['NZD'] = nZD;
    data['PHP'] = pHP;
    data['PLN'] = pLN;
    data['RON'] = rON;
    data['RUB'] = rUB;
    data['SEK'] = sEK;
    data['SGD'] = sGD;
    data['THB'] = tHB;
    data['TRY'] = tRY;
    data['USD'] = uSD;
    data['ZAR'] = zAR;
    return data;
  }
}