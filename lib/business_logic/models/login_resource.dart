class LoginResource {
  int rc;
  String message;
  String application;
  String appBaseUrl;
  Resource resource;

  LoginResource(
      {this.rc,
      this.message,
      this.application,
      this.appBaseUrl,
      this.resource});

  LoginResource.fromJson(Map<String, dynamic> json) {
    rc = json['rc'];
    message = json['message'];
    application = json['application'];
    appBaseUrl = json['app_base_url'];
    resource = json['resource'] != null
        ? new Resource.fromJson(json['resource'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rc'] = this.rc;
    data['message'] = this.message;
    data['application'] = this.application;
    data['app_base_url'] = this.appBaseUrl;
    if (this.resource != null) {
      data['resource'] = this.resource.toJson();
    }
    return data;
  }
}

class Resource {
  String androidVersion;
  String iosVersion;
  String mobileAppStatus;
  String locationId;
  String loginCount;
  Null deviceAppVer;
  String flatNumber;
  String consumerName;
  String consumerMobileNo;
  Null consumerEmailId;
  String balanceAmount;
  String dgBalanceAmount;
  String lastRechargeTime;
  String dgLastRechargeTime;
  String lastCouponNumber;
  String dgLastCouponNumber;
  String lastCouponAmount;
  String dgLastCouponAmount;
  String dgReading;
  String gridReading;
  String dgAmt;
  String gridAmt;
  String lastReadingUpdated;
  String dgLastReadingUpdated;
  String notificationEmail;
  String notificationSms;
  String bpNo;
  String consumerNo;
  String accountNo;
  String moveInDate;
  String notificationIvrs;
  String notificationAppLoad;
  String notificationAppBalance;
  String lowBalAlert;
  String dgLowBalAlert;
  String notificationAppEsource;
  String notificationAppUnitConsumption;
  String alertDailyConsumptionGrid;
  String alertDailyConsumptionDg;
  String loadSettingEnabled;
  String powerCutRestoreNotification;
  String rechargeNotification;
  String gridSanctionedLoad;
  String dgSanctionedLoad;
  String loadUnit;
  String meterType;
  String gridLoadAlarm;
  String dgLoadAlarm;
  String gridOverloadSetting;
  String dgOverloadSetting;
  String gridOverloadFromTime;
  String gridOverloadToTime;
  String dgOverloadFromTime;
  String dgOverloadToTime;
  String overloadGrid;
  String overloadDg;
  String siteId;
  String siteName;
  String siteAddress;
  String siteCity;
  String siteState;
  String siteCountry;
  String siteZipcode;
  Null siteSupervisorName;
  Null siteSupervisorContactNo;
  Null siteSupervisorEmailId;
  Null siteSupportConcernName;
  Null siteSupportContactNo;
  Null siteSupportEmailId;
  Null mainLicense;
  String application;
  String readingUnit;
  String currency;
  String siteCode;
  String balanceEnable;
  String readingEnable;
  String monthlyBillEnable;
  String monthlyBillNoOfMonth;
  String pLM;
  String pgEnablePaytm;
  String pgEnableMobikwik;
  Null paytmMobileUrl;
  Null mobikwikMobileUrl;
  String pgEnableHdfc;
  String paytmImage;
  Null rechargePopupMessage;
  String energySource;
  Null lastReadingUpdatedDg;
  String displayLoadSettingScreen;
  int dailyDgUnit;
  int dailyGridUnit;
  int monthlyDgUnit;
  int monthlyGridUnit;
  int dailyDgAmount;
  int dailyGridAmount;
  int monthlyDgAmount;
  double monthlyGridAmount;
  int fixCharges;
  String drCr;
  int fixChargesMonthly;
  String drCrMonthly;
  int dgFixChargesMonthly;
  String dgDrCrMonthly;

  Resource(
      {this.androidVersion,
      this.iosVersion,
      this.mobileAppStatus,
      this.locationId,
      this.loginCount,
      this.deviceAppVer,
      this.flatNumber,
      this.consumerName,
      this.consumerMobileNo,
      this.consumerEmailId,
      this.balanceAmount,
      this.dgBalanceAmount,
      this.lastRechargeTime,
      this.dgLastRechargeTime,
      this.lastCouponNumber,
      this.dgLastCouponNumber,
      this.lastCouponAmount,
      this.dgLastCouponAmount,
      this.dgReading,
      this.gridReading,
      this.dgAmt,
      this.gridAmt,
      this.lastReadingUpdated,
      this.dgLastReadingUpdated,
      this.notificationEmail,
      this.notificationSms,
      this.bpNo,
      this.consumerNo,
      this.accountNo,
      this.moveInDate,
      this.notificationIvrs,
      this.notificationAppLoad,
      this.notificationAppBalance,
      this.lowBalAlert,
      this.dgLowBalAlert,
      this.notificationAppEsource,
      this.notificationAppUnitConsumption,
      this.alertDailyConsumptionGrid,
      this.alertDailyConsumptionDg,
      this.loadSettingEnabled,
      this.powerCutRestoreNotification,
      this.rechargeNotification,
      this.gridSanctionedLoad,
      this.dgSanctionedLoad,
      this.loadUnit,
      this.meterType,
      this.gridLoadAlarm,
      this.dgLoadAlarm,
      this.gridOverloadSetting,
      this.dgOverloadSetting,
      this.gridOverloadFromTime,
      this.gridOverloadToTime,
      this.dgOverloadFromTime,
      this.dgOverloadToTime,
      this.overloadGrid,
      this.overloadDg,
      this.siteId,
      this.siteName,
      this.siteAddress,
      this.siteCity,
      this.siteState,
      this.siteCountry,
      this.siteZipcode,
      this.siteSupervisorName,
      this.siteSupervisorContactNo,
      this.siteSupervisorEmailId,
      this.siteSupportConcernName,
      this.siteSupportContactNo,
      this.siteSupportEmailId,
      this.mainLicense,
      this.application,
      this.readingUnit,
      this.currency,
      this.siteCode,
      this.balanceEnable,
      this.readingEnable,
      this.monthlyBillEnable,
      this.monthlyBillNoOfMonth,
      this.pLM,
      this.pgEnablePaytm,
      this.pgEnableMobikwik,
      this.paytmMobileUrl,
      this.mobikwikMobileUrl,
      this.pgEnableHdfc,
      this.paytmImage,
      this.rechargePopupMessage,
      this.energySource,
      this.lastReadingUpdatedDg,
      this.displayLoadSettingScreen,
      this.dailyDgUnit,
      this.dailyGridUnit,
      this.monthlyDgUnit,
      this.monthlyGridUnit,
      this.dailyDgAmount,
      this.dailyGridAmount,
      this.monthlyDgAmount,
      this.monthlyGridAmount,
      this.fixCharges,
      this.drCr,
      this.fixChargesMonthly,
      this.drCrMonthly,
      this.dgFixChargesMonthly,
      this.dgDrCrMonthly});

  Resource.fromJson(Map<String, dynamic> json) {
    androidVersion = json['android_version'];
    iosVersion = json['ios_version'];
    mobileAppStatus = json['mobile_app_status'];
    locationId = json['location_id'];
    loginCount = json['login_count'];
    deviceAppVer = json['device_app_ver'];
    flatNumber = json['flat_number'];
    consumerName = json['consumer_name'];
    consumerMobileNo = json['consumer_mobile_no'];
    consumerEmailId = json['consumer_email_id'];
    balanceAmount = json['balance_amount'];
    dgBalanceAmount = json['dg_balance_amount'];
    lastRechargeTime = json['last_recharge_time'];
    dgLastRechargeTime = json['dg_last_recharge_time'];
    lastCouponNumber = json['last_coupon_number'];
    dgLastCouponNumber = json['dg_last_coupon_number'];
    lastCouponAmount = json['last_coupon_amount'];
    dgLastCouponAmount = json['dg_last_coupon_amount'];
    dgReading = json['dg_reading'];
    gridReading = json['grid_reading'];
    dgAmt = json['dg_amt'];
    gridAmt = json['grid_amt'];
    lastReadingUpdated = json['last_reading_updated'];
    dgLastReadingUpdated = json['dg_last_reading_updated'];
    notificationEmail = json['notification_email'];
    notificationSms = json['notification_sms'];
    bpNo = json['bp_no'];
    consumerNo = json['consumer_no'];
    accountNo = json['account_no'];
    moveInDate = json['move_in_date'];
    notificationIvrs = json['notification_ivrs'];
    notificationAppLoad = json['notification_app_load'];
    notificationAppBalance = json['notification_app_balance'];
    lowBalAlert = json['low_bal_alert'];
    dgLowBalAlert = json['dg_low_bal_alert'];
    notificationAppEsource = json['notification_app_esource'];
    notificationAppUnitConsumption = json['notification_app_unit_consumption'];
    alertDailyConsumptionGrid = json['alert_daily_consumption_grid'];
    alertDailyConsumptionDg = json['alert_daily_consumption_dg'];
    loadSettingEnabled = json['load_setting_enabled'];
    powerCutRestoreNotification = json['power_cut_restore_notification'];
    rechargeNotification = json['recharge_notification'];
    gridSanctionedLoad = json['grid_sanctioned_load'];
    dgSanctionedLoad = json['dg_sanctioned_load'];
    loadUnit = json['load_unit'];
    meterType = json['meter_type'];
    gridLoadAlarm = json['grid_load_alarm'];
    dgLoadAlarm = json['dg_load_alarm'];
    gridOverloadSetting = json['grid_overload_setting'];
    dgOverloadSetting = json['dg_overload_setting'];
    gridOverloadFromTime = json['grid_overload_from_time'];
    gridOverloadToTime = json['grid_overload_to_time'];
    dgOverloadFromTime = json['dg_overload_from_time'];
    dgOverloadToTime = json['dg_overload_to_time'];
    overloadGrid = json['overload_grid'];
    overloadDg = json['overload_dg'];
    siteId = json['site_id'];
    siteName = json['site_name'];
    siteAddress = json['site_address'];
    siteCity = json['site_city'];
    siteState = json['site_state'];
    siteCountry = json['site_country'];
    siteZipcode = json['site_zipcode'];
    siteSupervisorName = json['site_supervisor_name'];
    siteSupervisorContactNo = json['site_supervisor_contact_no'];
    siteSupervisorEmailId = json['site_supervisor_email_id'];
    siteSupportConcernName = json['site_support_concern_name'];
    siteSupportContactNo = json['site_support_contact_no'];
    siteSupportEmailId = json['site_support_email_id'];
    mainLicense = json['main_license'];
    application = json['application'];
    readingUnit = json['reading_unit'];
    currency = json['currency'];
    siteCode = json['site_code'];
    balanceEnable = json['balance_enable'];
    readingEnable = json['reading_enable'];
    monthlyBillEnable = json['monthly_bill_enable'];
    monthlyBillNoOfMonth = json['monthly_bill_no_of_month'];
    pLM = json['PLM'];
    pgEnablePaytm = json['pg_enable_paytm'];
    pgEnableMobikwik = json['pg_enable_mobikwik'];
    paytmMobileUrl = json['paytm_mobile_url'];
    mobikwikMobileUrl = json['mobikwik_mobile_url'];
    pgEnableHdfc = json['pg_enable_hdfc'];
    paytmImage = json['paytm_image'];
    rechargePopupMessage = json['recharge_popup_message'];
    energySource = json['energy_source'];
    lastReadingUpdatedDg = json['last_reading_updated_dg'];
    displayLoadSettingScreen = json['display_load_setting_screen'];
    dailyDgUnit = json['daily_dg_unit'];
    dailyGridUnit = json['daily_grid_unit'];
    monthlyDgUnit = json['monthly_dg_unit'];
    monthlyGridUnit = json['monthly_grid_unit'];
    dailyDgAmount = json['daily_dg_amount'];
    dailyGridAmount = json['daily_grid_amount'];
    monthlyDgAmount = json['monthly_dg_amount'];
    monthlyGridAmount = json['monthly_grid_amount'];
    fixCharges = json['fix_charges'];
    drCr = json['dr_cr'];
    fixChargesMonthly = json['fix_charges_monthly'];
    drCrMonthly = json['dr_cr_monthly'];
    dgFixChargesMonthly = json['dg_fix_charges_monthly'];
    dgDrCrMonthly = json['dg_dr_cr_monthly'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['android_version'] = this.androidVersion;
    data['ios_version'] = this.iosVersion;
    data['mobile_app_status'] = this.mobileAppStatus;
    data['location_id'] = this.locationId;
    data['login_count'] = this.loginCount;
    data['device_app_ver'] = this.deviceAppVer;
    data['flat_number'] = this.flatNumber;
    data['consumer_name'] = this.consumerName;
    data['consumer_mobile_no'] = this.consumerMobileNo;
    data['consumer_email_id'] = this.consumerEmailId;
    data['balance_amount'] = this.balanceAmount;
    data['dg_balance_amount'] = this.dgBalanceAmount;
    data['last_recharge_time'] = this.lastRechargeTime;
    data['dg_last_recharge_time'] = this.dgLastRechargeTime;
    data['last_coupon_number'] = this.lastCouponNumber;
    data['dg_last_coupon_number'] = this.dgLastCouponNumber;
    data['last_coupon_amount'] = this.lastCouponAmount;
    data['dg_last_coupon_amount'] = this.dgLastCouponAmount;
    data['dg_reading'] = this.dgReading;
    data['grid_reading'] = this.gridReading;
    data['dg_amt'] = this.dgAmt;
    data['grid_amt'] = this.gridAmt;
    data['last_reading_updated'] = this.lastReadingUpdated;
    data['dg_last_reading_updated'] = this.dgLastReadingUpdated;
    data['notification_email'] = this.notificationEmail;
    data['notification_sms'] = this.notificationSms;
    data['bp_no'] = this.bpNo;
    data['consumer_no'] = this.consumerNo;
    data['account_no'] = this.accountNo;
    data['move_in_date'] = this.moveInDate;
    data['notification_ivrs'] = this.notificationIvrs;
    data['notification_app_load'] = this.notificationAppLoad;
    data['notification_app_balance'] = this.notificationAppBalance;
    data['low_bal_alert'] = this.lowBalAlert;
    data['dg_low_bal_alert'] = this.dgLowBalAlert;
    data['notification_app_esource'] = this.notificationAppEsource;
    data['notification_app_unit_consumption'] =
        this.notificationAppUnitConsumption;
    data['alert_daily_consumption_grid'] = this.alertDailyConsumptionGrid;
    data['alert_daily_consumption_dg'] = this.alertDailyConsumptionDg;
    data['load_setting_enabled'] = this.loadSettingEnabled;
    data['power_cut_restore_notification'] = this.powerCutRestoreNotification;
    data['recharge_notification'] = this.rechargeNotification;
    data['grid_sanctioned_load'] = this.gridSanctionedLoad;
    data['dg_sanctioned_load'] = this.dgSanctionedLoad;
    data['load_unit'] = this.loadUnit;
    data['meter_type'] = this.meterType;
    data['grid_load_alarm'] = this.gridLoadAlarm;
    data['dg_load_alarm'] = this.dgLoadAlarm;
    data['grid_overload_setting'] = this.gridOverloadSetting;
    data['dg_overload_setting'] = this.dgOverloadSetting;
    data['grid_overload_from_time'] = this.gridOverloadFromTime;
    data['grid_overload_to_time'] = this.gridOverloadToTime;
    data['dg_overload_from_time'] = this.dgOverloadFromTime;
    data['dg_overload_to_time'] = this.dgOverloadToTime;
    data['overload_grid'] = this.overloadGrid;
    data['overload_dg'] = this.overloadDg;
    data['site_id'] = this.siteId;
    data['site_name'] = this.siteName;
    data['site_address'] = this.siteAddress;
    data['site_city'] = this.siteCity;
    data['site_state'] = this.siteState;
    data['site_country'] = this.siteCountry;
    data['site_zipcode'] = this.siteZipcode;
    data['site_supervisor_name'] = this.siteSupervisorName;
    data['site_supervisor_contact_no'] = this.siteSupervisorContactNo;
    data['site_supervisor_email_id'] = this.siteSupervisorEmailId;
    data['site_support_concern_name'] = this.siteSupportConcernName;
    data['site_support_contact_no'] = this.siteSupportContactNo;
    data['site_support_email_id'] = this.siteSupportEmailId;
    data['main_license'] = this.mainLicense;
    data['application'] = this.application;
    data['reading_unit'] = this.readingUnit;
    data['currency'] = this.currency;
    data['site_code'] = this.siteCode;
    data['balance_enable'] = this.balanceEnable;
    data['reading_enable'] = this.readingEnable;
    data['monthly_bill_enable'] = this.monthlyBillEnable;
    data['monthly_bill_no_of_month'] = this.monthlyBillNoOfMonth;
    data['PLM'] = this.pLM;
    data['pg_enable_paytm'] = this.pgEnablePaytm;
    data['pg_enable_mobikwik'] = this.pgEnableMobikwik;
    data['paytm_mobile_url'] = this.paytmMobileUrl;
    data['mobikwik_mobile_url'] = this.mobikwikMobileUrl;
    data['pg_enable_hdfc'] = this.pgEnableHdfc;
    data['paytm_image'] = this.paytmImage;
    data['recharge_popup_message'] = this.rechargePopupMessage;
    data['energy_source'] = this.energySource;
    data['last_reading_updated_dg'] = this.lastReadingUpdatedDg;
    data['display_load_setting_screen'] = this.displayLoadSettingScreen;
    data['daily_dg_unit'] = this.dailyDgUnit;
    data['daily_grid_unit'] = this.dailyGridUnit;
    data['monthly_dg_unit'] = this.monthlyDgUnit;
    data['monthly_grid_unit'] = this.monthlyGridUnit;
    data['daily_dg_amount'] = this.dailyDgAmount;
    data['daily_grid_amount'] = this.dailyGridAmount;
    data['monthly_dg_amount'] = this.monthlyDgAmount;
    data['monthly_grid_amount'] = this.monthlyGridAmount;
    data['fix_charges'] = this.fixCharges;
    data['dr_cr'] = this.drCr;
    data['fix_charges_monthly'] = this.fixChargesMonthly;
    data['dr_cr_monthly'] = this.drCrMonthly;
    data['dg_fix_charges_monthly'] = this.dgFixChargesMonthly;
    data['dg_dr_cr_monthly'] = this.dgDrCrMonthly;
    return data;
  }
}
