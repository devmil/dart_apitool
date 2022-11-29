enum ApiChangeCode {
  ci01('CI01', 'interface removed'),
  ci02('CI02', 'interface added'),
  ci03('CI03', 'interface renamed'),
  ci04('CI04', 'supertype added'),
  ci05('CI05', 'supertype removed'),
  ci06('CI06', 'type parameters changed'),
  ci07('CI07', 'type parameter added'),
  ci08('CI08', 'type parameter removed'),
  ci09('CI09', 'deprecated status changed'),
  ci10('CI10', 'experimental status changed'),
  ce01('CE01', 'executable parameters removed'),
  ce02('CE02', 'executable parameters added'),
  ce03('CE03', 'executable parameters renamed'),
  ce04('CE04', 'executable parameters reordered'),
  ce05('CE05', 'executable parameter requiredness changed'),
  ce06('CE06', 'executable parameter deprecated status changed'),
  ce07('CE07', 'executable parameter named status changed'),
  ce08('CE08', 'executable parameter type changed'),
  ce09('CE09', 'executable return type changed'),
  ce10('CE10', 'executable removed'),
  ce11('CE11', 'executable added'),
  ce12('CE12', 'executable renamed'),
  ce13('CE13', 'executable deprecated status changed'),
  ce14('CE14', 'executable changed from/to static/non-static'),
  ce15('CE15', 'executable experimental status changed'),
  ce16('CE16', 'executable parameter experimental status changed'),
  cp01('CP01', 'new entry point'),
  cp02('CP02', 'entry point removed'),
  cf01('CF01', 'field removed'),
  cf02('CF02', 'field added'),
  cf03('CF03', 'field deprecated status changed'),
  cf04('CF04', 'field type changed'),
  cf05('CF05', 'field static status changed'),
  cf06('CF06', 'field experimental status changed'),
  cpi01('CPI01', 'iOS platform added'),
  cpi02('CPI02', 'iOS platform removed'),
  cpi03('CPI03', 'iOS platform constraint changed'),
  cpa01('CPA01', 'Android platform added'),
  cpa02('CPA02', 'Android platform removed'),
  cpa03('CPA03', 'Android platform min SDK added'),
  cpa04('CPA04', 'Android platform min SDK removed'),
  cpa05('CPA05', 'Android platform min SDK changed'),
  cpa06('CPA06', 'Android platform target SDK added'),
  cpa07('CPA07', 'Android platform target SDK removed'),
  cpa08('CPA08', 'Android platform target SDK changed'),
  cpa09('CPA09', 'Android platform compile SDK added'),
  cpa10('CPA10', 'Android platform compile SDK removed'),
  cpa11('CPA11', 'Android platform compile SDK changed'),
  csdk01('CSDK01', 'Type of SDK changed'),
  csdk02('CSDK02', 'Min SDK version raised'),
  cd01('CD01', 'Dependency added'),
  cd02('CD02', 'Dependency removed'),
  cd03('CD03', 'Dependency version changed'),
  ;

  const ApiChangeCode(this.code, this.description);
  final String code;
  final String description;
}
