import 'package:json_annotation/json_annotation.dart';

part 'resource.g.dart';

@JsonSerializable()
class Resource {
  String androidVersion;
  String iosVersion;
  String mobileAppStatus;
  String locationId;
  String loginCount;
  String deviceAppVer;
  String flatNumber;
  String consumerName;
  String consumerMobileNo;
  String consumerEmailId;
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
  String siteSupervisorName;
  String siteSupervisorContactNo;
  String siteSupervisorEmailId;
  String siteSupportConcernName;
  String siteSupportContactNo;
  String siteSupportEmailId;
  String mainLicense;
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
  String paytmMobileUrl;
  String mobikwikMobileUrl;
  String pgEnableHdfc;
  String paytmImage;
  String rechargePopupMessage;
  String energySource;
  String lastReadingUpdatedDg;
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

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}
