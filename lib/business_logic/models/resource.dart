import 'package:json_annotation/json_annotation.dart';

part 'resource.g.dart';

@JsonSerializable()
class Resource {
  @JsonKey(name: 'android_version')
  String androidVersion;

  @JsonKey(name: 'ios_version')
  String iosVersion;

  @JsonKey(name: 'mobile_app_status')
  String mobileAppStatus;

  @JsonKey(name: 'location_id')
  String locationId;

  @JsonKey(name: 'login_count')
  String loginCount;

  @JsonKey(name: 'device_app_ver')
  String deviceAppVer;

  @JsonKey(name: 'flat_number')
  String flatNumber;

  @JsonKey(name: 'consumer_name')
  String consumerName;

  @JsonKey(name: 'consumer_mobile_no')
  String consumerMobileNo;

  @JsonKey(name: 'consumer_email_id')
  String consumerEmailId;

  @JsonKey(name: 'balance_amount')
  String balanceAmount;

  @JsonKey(name: 'dg_balance_amount')
  String dgBalanceAmount;

  @JsonKey(name: 'last_recharge_time')
  String lastRechargeTime;

  @JsonKey(name: 'dg_last_recharge_time')
  String dgLastRechargeTime;

  @JsonKey(name: 'last_coupon_number')
  String lastCouponNumber;

  @JsonKey(name: 'dg_last_coupon_number')
  String dgLastCouponNumber;

  @JsonKey(name: 'last_coupon_amount')
  String lastCouponAmount;

  @JsonKey(name: 'dg_last_coupon_amount')
  String dgLastCouponAmount;

  @JsonKey(name: 'dg_reading')
  String dgReading;

  @JsonKey(name: 'grid_reading')
  String gridReading;

  @JsonKey(name: 'dg_amt')
  String dgAmt;

  @JsonKey(name: 'grid_amt')
  String gridAmt;

  @JsonKey(name: 'last_reading_updated')
  String lastReadingUpdated;

  @JsonKey(name: 'dg_last_reading_updated')
  String dgLastReadingUpdated;

  @JsonKey(name: 'notification_email')
  String notificationEmail;

  @JsonKey(name: 'notification_sms')
  String notificationSms;

  @JsonKey(name: 'bp_no')
  String bpNo;

  @JsonKey(name: 'consumerNo')
  String consumerNo;

  @JsonKey(name: 'account_no')
  String accountNo;

  @JsonKey(name: 'move_in_date')
  String moveInDate;

  @JsonKey(name: 'ios_version')
  String notificationIvrs;

  @JsonKey(name: 'notification_app_load')
  String notificationAppLoad;

  @JsonKey(name: 'notification_app_balance')
  String notificationAppBalance;

  @JsonKey(name: 'low_bal_alert')
  String lowBalAlert;

  @JsonKey(name: 'dg_low_bal_alert')
  String dgLowBalAlert;

  @JsonKey(name: 'notification_app_esource')
  String notificationAppEsource;

  @JsonKey(name: 'notification_app_unit_consumption')
  String notificationAppUnitConsumption;

  @JsonKey(name: 'alert_daily_consumption_grid')
  String alertDailyConsumptionGrid;

  @JsonKey(name: 'alert_daily_consumption_dg')
  String alertDailyConsumptionDg;

  @JsonKey(name: 'ios_version')
  String loadSettingEnabled;
  @JsonKey(name: 'ios_version')
  String powerCutRestoreNotification;
  @JsonKey(name: 'ios_version')
  String rechargeNotification;
  @JsonKey(name: 'ios_version')
  String gridSanctionedLoad;
  @JsonKey(name: 'ios_version')
  String dgSanctionedLoad;
  @JsonKey(name: 'ios_version')
  String loadUnit;
  @JsonKey(name: 'ios_version')
  String meterType;
  @JsonKey(name: 'ios_version')
  String gridLoadAlarm;
  @JsonKey(name: 'ios_version')
  String dgLoadAlarm;
  @JsonKey(name: 'ios_version')
  String gridOverloadSetting;
  @JsonKey(name: 'ios_version')
  String dgOverloadSetting;
  @JsonKey(name: 'ios_version')
  String gridOverloadFromTime;
  @JsonKey(name: 'ios_version')
  String gridOverloadToTime;
  @JsonKey(name: 'ios_version')
  String dgOverloadFromTime;
  @JsonKey(name: 'ios_version')
  String dgOverloadToTime;
  @JsonKey(name: 'ios_version')
  String overloadGrid;
  @JsonKey(name: 'ios_version')
  String overloadDg;
  @JsonKey(name: 'ios_version')
  String siteId;
  @JsonKey(name: 'ios_version')
  String siteName;
  @JsonKey(name: 'ios_version')
  String siteAddress;
  @JsonKey(name: 'ios_version')
  String siteCity;
  @JsonKey(name: 'ios_version')
  String siteState;
  @JsonKey(name: 'ios_version')
  String siteCountry;
  @JsonKey(name: 'ios_version')
  String siteZipcode;
  @JsonKey(name: 'ios_version')
  String siteSupervisorName;
  @JsonKey(name: 'ios_version')
  String siteSupervisorContactNo;
  @JsonKey(name: 'ios_version')
  String siteSupervisorEmailId;
  @JsonKey(name: 'ios_version')
  String siteSupportConcernName;
  @JsonKey(name: 'ios_version')
  String siteSupportContactNo;
  @JsonKey(name: 'ios_version')
  String siteSupportEmailId;
  @JsonKey(name: 'ios_version')
  String mainLicense;
  @JsonKey(name: 'ios_version')
  String application;
  @JsonKey(name: 'ios_version')
  String readingUnit;
  @JsonKey(name: 'ios_version')
  String currency;
  @JsonKey(name: 'ios_version')
  String siteCode;
  @JsonKey(name: 'ios_version')
  String balanceEnable;
  @JsonKey(name: 'ios_version')
  String readingEnable;
  @JsonKey(name: 'ios_version')
  String monthlyBillEnable;
  @JsonKey(name: 'ios_version')
  String monthlyBillNoOfMonth;
  @JsonKey(name: 'ios_version')
  String pLM;
  @JsonKey(name: 'ios_version')
  String pgEnablePaytm;
  @JsonKey(name: 'ios_version')
  String pgEnableMobikwik;
  @JsonKey(name: 'ios_version')
  String paytmMobileUrl;
  @JsonKey(name: 'ios_version')
  String mobikwikMobileUrl;
  @JsonKey(name: 'ios_version')
  String pgEnableHdfc;
  @JsonKey(name: 'ios_version')
  String paytmImage;
  @JsonKey(name: 'ios_version')
  String rechargePopupMessage;
  @JsonKey(name: 'ios_version')
  String energySource;
  @JsonKey(name: 'ios_version')
  String lastReadingUpdatedDg;
  @JsonKey(name: 'ios_version')
  String displayLoadSettingScreen;
  @JsonKey(name: 'ios_version')
  int dailyDgUnit;
  @JsonKey(name: 'ios_version')
  int dailyGridUnit;
  @JsonKey(name: 'ios_version')
  int monthlyDgUnit;
  @JsonKey(name: 'ios_version')
  int monthlyGridUnit;
  @JsonKey(name: 'ios_version')
  int dailyDgAmount;
  @JsonKey(name: 'ios_version')
  int dailyGridAmount;
  @JsonKey(name: 'ios_version')
  int monthlyDgAmount;
  @JsonKey(name: 'ios_version')
  double monthlyGridAmount;
  @JsonKey(name: 'ios_version')
  int fixCharges;
  @JsonKey(name: 'ios_version')
  String drCr;
  @JsonKey(name: 'ios_version')
  int fixChargesMonthly;
  @JsonKey(name: 'ios_version')
  String drCrMonthly;

  @JsonKey(name: 'ios_version')
  int dgFixChargesMonthly;

  @JsonKey(name: 'ios_version')
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

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}
