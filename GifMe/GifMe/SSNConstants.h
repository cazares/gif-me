//
//  SHSNConstants.h
//  SHSNShipStationViewer
//
//  Created by Miguel Cazares on 2/10/15.
//  Copyright (c) 2015 ShipStation. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    SSNOrderStatusAwaitingPayment = 1,
    SSNOrderStatusAwaitingShipment = 2,
    SSNOrderStatusPendingFulfillment = 7,
    SSNOrderStatusShipped = 3,
    SSNOrderStatusCancelled = 4,
    SSNOrderStatusOnHold = 5,
    SSNOrderStatusProcessing = 6,
    SSNOrderStatusAny,
} SSNOrderStatusType;

typedef enum : NSInteger {
    SSNShipmentStatusAny,
    SSNShipmentStatusRecent,
    SSNShipmentStatusDelivered = 3,
    SSNShipmentStatusInTransit = 2,
    SSNShipmentStatusException = 4,
    SSNShipmentStatusVoided,
    SSNReturnStatusAny,
    SSNReturnStatusOutstanding,
    SSNReturnStatusReceived,
    SSNReturnStatusVoided
} SSNShipmentStatusType;

typedef enum : NSUInteger {
    SSNPrintDocumentShippingLabel,
    SSNPrintDocumentPackingSlip,
    SSNPrintDocumentEndOfDay,
    SSNPrintDocumentCustom,
    SSNPrintDocumentReturnLabel
} SSNPrintDocumentType;

typedef enum : NSInteger {
    SSNFulfillmentStatusAny = -1,
    SSNFulfillmentStatusRecent = 0,
    SSNFulfillmentStatusPending = 1,
    SSNFulfillmentStatusInTransit = 2,
    SSNFulfillmentStatusDelivered = 3,
    SSNFulfillmentStatusException = 4,
    SSNFulfillmentStatusCancelled = 5,
} SSNFulfillmentStatusType;

typedef void (^SSNActionSheetSelectedChangedBlock) (NSString *selectedText, NSInteger buttonIndex);
typedef void (^SSNEmptyBlock)();
typedef void (^SSNGenericBlock)(id JSON);
typedef void (^SSNGeneric2Block)(id, id);
typedef void (^SSNActionSheetBlock)(NSString *, NSInteger);
typedef void (^SSNGeneric2BlockInt)(id, int);
typedef void (^SSNGeneric2BlockBool)(id, BOOL);
typedef void (^SSNGeneric3BlockBool)(id, id, BOOL);
typedef void (^SSNErrorBlock)(NSError *error);
typedef NSString * (^SSNEmptyBlockReturningString)();
typedef BOOL (^SSNTextFieldLimitDecimalsBlock)(UITextField *, NSRange, NSString *);

static const CGFloat kAutoCompleteRowHeight = 44.0f;
static const int kMaxAutoCompleteRows = 3;

static CGFloat kFooterHeight = 0.01;
static CGFloat SSNCornerRadiusExtraSmall = 4.5;
static CGFloat SSNCornerRadiusSmall = 6;
static CGFloat SSNCornerRadiusMedium = 9;
static CGFloat SSNCellMargin = 10;
static CGFloat SSNCornerRadius = 12;
static CGFloat SSNMediumButtonFontSize = 15.0f;
static CGFloat SSNMediumButtonBorder = 0.5f;
static CGFloat SSNLargeButtonFontSize = 18.0f;
static CGFloat SSNSectionHeaderFontSize = 16.0f;
static CGFloat SSNChartGroupSpace = 0.06f;
static CGFloat SSNChartBarSpace = 0.02f;
static CGFloat SSNChartBarWidth = 0.45f;
static const CGFloat kDefaultKeyboardHeightOffset = 35.0f;
static NSString *kReallyLongString = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ";
static NSString *kSSNStandardFontName = @"HelveticaNeue";
static NSString *kBaseOrderItemImageUrl = @"https://src.shipstation.com";
static NSString *kDefaultString = @"";
static NSString *kSpaceString = @" ";
static NSString *kZeroString = @"0";
static NSString *kTrueString = @"true";
static NSString *kFalseString = @"false";
static NSInteger kDefaultOrderID = 0;

static NSString *kSSNSVGDefaultProviderLogo = @"https://cdn.shipstation.com/shipstation-v2/1601adb3e388a6806cf807ae1cb5a2af.svg";
static NSString *kSSNSVGDefaultBlackSquareLogo = @"https://upload.wikimedia.org/wikipedia/commons/2/21/Solid_black.svg";
static NSString *kSSNSVGMarketplaceLogoFormat = @"https://logos.shipstation.com/ipaas/ordersource/%@/icon.svg";
static NSString *kSSNSVGCarrierLogoFormat = @"https://logos.shipstation.com/ipaas/carriers/%@/icon.svg";

static NSString *kAboutBlank = @"about:blank";
static NSString *kCustomStoreLogoName = @"Custom Store";
static NSString *kShipStationApiCode = @"shipstation";
static const CGFloat kCreateNewOrderLabelWidth = 160.0f;

static NSString *kDateFormat1 = @"M/dd/yyyy";
static NSString *kDateFormat2 = @"M/dd/yyyy hh:mm a";
static NSString *kDateFormat3 = @"EEEE";
static NSString *kDateFormat4 = @"M/d";
static NSString *kDateFormat5 = @"M/dd";
static NSString *kDateFormat6 = @"ha";

static NSString *kDateFormat7 = @"yyyy-MM-dd'T'HH:mm:ss.SSSZ";
static NSString *kDateFormat8 = @"yyyy-MM-dd'T'HH:mm:ss.SSS";
static NSString *kDateFormat9 = @"yyyy-MM-dd'T'HH:mm:ssZ";
static NSString *kDateFormat10 = @"yyyy-MM-dd'T'HH:mm:ss";
static NSString *kDateFormat11 = @"yyyy-MM-dd'T'00:00:00";

static NSString *kDateFormat12 = @"MM/dd/yyyy";
static NSString *kDateformat13 = @"EEEE hh:mm a";
static NSString *kDateFormat14 = @"hh:mm a";

static NSString *kRestrictSearchFields = @"ShipName,BillName,ShipCompany,BuyerEmail,Username,OrderNumbers,ItemNames,ItemSkus,ShipCity,Tracking,Batches";

@interface SSNConstants : NSObject

#pragma mark General
+ (NSString *)loading;
+ (NSString *)searching;
+ (NSString *)saving;
+ (NSString *)saved;
+ (NSString *)error;

+ (NSString *)today;
+ (NSString *)yesterday;
+ (NSString *)lastSevenDays;
+ (NSString *)lastThirtyDays;
+ (NSString *)thisMonth;
+ (NSString *)lastMonth;
+ (NSString *)custom;

+ (NSString *)done;
+ (NSString *)reset;
+ (NSString *)fromDate;
+ (NSString *)toDate;

+ (NSString *)notAvailable;
+ (NSString *)selectShipFrom;
+ (NSString *)selectCountry;
+ (NSString *)zipCode;
+ (NSString *)previous;
+ (NSString *)next;

+ (NSString *)selectService;
+ (NSString *)selectAddressType;
+ (NSString *)selectConfirmation;
+ (NSString *)selectPackageType;

+ (NSString *)allCarriers;
+ (NSString *)yourPackaging;
+ (NSString *)required;
+ (NSString *)shipFrom;
+ (NSString *)country;
+ (NSString *)shipTo;
+ (NSString *)packageWeight;
+ (NSString *)insuredValue;

+ (NSString *)optional;
+ (NSString *)serviceClass;
+ (NSString *)addressType;
+ (NSString *)confirmation;
+ (NSString *)packageType;
+ (NSString *)packageSize;

+ (NSString *)getRates;

+ (NSString *)shipFromLocation;
+ (NSString *)shipFromLocationRequired;

+ (NSString *)domestic;
+ (NSString *)international;
+ (NSString *)orderDate;
+ (NSString *)none;
+ (NSString *)tags;

+ (NSString *)unexpectedErrorTitle;
+ (NSString *)unexpectedErrorMessage;
+ (NSString *)unknownErrorOccurred;
+ (NSString *)newOrders;
+ (NSString *)showLess;
+ (NSString *)showAll;
+ (NSString *)noRecords;
+ (NSString *)noShipments;
+ (NSString *)noPriorShipments;
+ (NSString *)shipments;
+ (NSString *)recipient;

+ (NSString *)rateCalculator;
+ (NSString *)ground;
+ (NSString *)threePlusDays;
+ (NSString *)twoDays;
+ (NSString *)oneDay;

+ (NSString *)residential;
+ (NSString *)commercial;
+ (NSString *)noConfirmation;
+ (NSString *)delivery;
+ (NSString *)signature;
+ (NSString *)adultSignature;

+ (NSString *)trackingNumber;
+ (NSString *)carrier;
+ (NSString *)service;
+ (NSString *)shipDate;
+ (NSString *)createDate;
+ (NSString *)shippingCost;
+ (NSString *)orderNumber;
+ (NSString *)createdBy;
+ (NSString *)provider;

+ (NSString *)company;
+ (NSString *)addressLineOne;
+ (NSString *)addressLineTwo;
+ (NSString *)city;
+ (NSString *)state;
+ (NSString *)zip;

+ (NSString *)phoneNumberShort;
+ (NSString *)emailAddress;
+ (NSString *)orderNumberShort;
+ (NSString *)autoGenerate;
+ (NSString *)paidDate;

+ (NSString *)amountPaid;
+ (NSString *)shippingPaid;
+ (NSString *)taxPaid;
+ (NSString *)orderLineItems;
+ (NSString *)addALineItem;

+ (NSString *)datePaid;
+ (NSString *)serviceRequested;

+ (NSString *)saveOrder;
+ (NSString *)saveAndCreateAnother;
+ (NSString *)saveAndShip;

+ (NSString *)failedToSaveOrder;
+ (NSString *)noItemsFound;

+ (NSString *)failedToLoadShipment;
+ (NSString *)failedToLoadFulfillment;

+ (NSString *)edit;
+ (NSString *)preset;
+ (NSString *)savedOrderItems;
+ (NSString *)savedOrderItemsError;
+ (NSString *)noLineItems;
+ (NSString *)orderAlreadyShippedTitle;
+ (NSString *)orderAlreadyShippedMessage;

+ (NSString *)actions;
+ (NSString *)failedToCancelOrder;
+ (NSString *)failedToPlaceOrderOnHold;
+ (NSString *)holdUntil;

+ (NSString *)restore;
+ (NSString *)orderWillBeMovedToAwaitingShipment;
+ (NSString *)failedToRestoreOrder;
+ (NSString *)markAsShipped;
+ (NSString *)createReturnLabel;
+ (NSString *)appliedPreset;
+ (NSString *)failedToApplyPreset;

+ (NSString *)shipping;
+ (NSString *)details;
+ (NSString *)items;
+ (NSString *)assignedTo;
+ (NSString *)notes;

+ (NSString *)package;
+ (NSString *)insurance;
+ (NSString *)weight;
+ (NSString *)dimensions;

+ (NSString *)tapToAddTags;
+ (NSString *)fromTheCustomer;
+ (NSString *)toTheCustomer;
+ (NSString *)internalNotes;
+ (NSString *)tapToAddANote;

+ (NSString *)onHoldUntil;
+ (NSString *)orderHistory;
+ (NSString *)close;

+ (NSString *)unit;
+ (NSString *)quantity_short;
+ (NSString *)total;
+ (NSString *)balance;
+ (NSString *)totalCost;

+ (NSString *)warehouse;
+ (NSString *)closedDate;
+ (NSString *)name;
+ (NSString *)quantity;
+ (NSString *)price;

+ (NSString *)iPadSelectOrder;
+ (NSString *)iPadBulkActions;
+ (NSString *)iPadSelectShipment;
+ (NSString *)iPadSelectReturn;
+ (NSString *)iPadSelectFulfillment;

#pragma mark Modal
+ (NSString *)modalOk;
+ (NSString *)modalNo;
+ (NSString *)modalYes;
+ (NSString *)modalYesContinue;
+ (NSString *)modalCancel;
+ (NSString *)modalConfirm;

+ (NSString *)modalSave;
+ (NSString *)modalHoldOrder;
+ (NSString *)modalHoldUntil;
+ (NSString *)modalSetOrderDate;
+ (NSString *)modalOrderDate;
+ (NSString *)modalSetPaidDate;
+ (NSString *)modalPaidDate;
+ (NSString *)modalValidNumberPrompt;

+ (NSString *)modalContinue;
+ (NSString *)modalSetShipDate;
+ (NSString *)modalShipDate;
+ (NSString *)modalGetRate;
+ (NSString *)modalSaveAndClose;
+ (NSString *)modalBack;
+ (NSString *)modalCreateReturn;
+ (NSString *)modalShipOrder;

+ (NSString *)modalStop;

#pragma mark Login
+ (NSString *)usernameOrEmail;
+ (NSString *)password;
+ (NSString *)signIn;
+ (NSString *)noActiveSubscriptionMessage;
+ (NSString *)signInAgain;

#pragma mark Side Menu
+ (NSString *)sideMenuInsights;
+ (NSString *)sideMenuReturns;
+ (NSString *)sideMenuFulfillments;
+ (NSString *)sideMenuInventory;

+ (NSString *)sideMenuCalculator;
+ (NSString *)sideMenuSettings;
+ (NSString *)sideMenuFeedback;

+ (NSString *)sideMenuLogout;
+ (NSString *)sideMenuLogoutMessage;

#pragma mark Stores
+ (NSString *)refreshStoresTitle;
+ (NSString *)refreshStoresSubtitle;

+ (NSString *)refreshStoresImportingOrders;
+ (NSString *)refreshStoresLastUpdated;
+ (NSString *)refreshStoresNeverUpdated;
+ (NSString *)refreshStoresError;

#pragma mark Insights
+ (NSString *)insightsSalesVsShipments;
+ (NSString *)insightsTopGrossingStores;
+ (NSString *)insightsReadyToShip;
+ (NSString *)insightsOrdersShipped;
+ (NSString *)insightsDaysPlural;
+ (NSString *)insightsDaysSingular;

+ (NSString *)insightsCurrentAccountBalances;
+ (NSString *)insightsOpenOrderAging;
+ (NSString *)insightsShipmentsByCarrier;
+ (NSString *)insightsTopShippers;
+ (NSString *)insightsShippingRevenue;
+ (NSString *)insightsShippingCost;

+ (NSString *)insightsItemSales;
+ (NSString *)insightsTopSellingProductsByQty;
+ (NSString *)insightsTopSellingProductsByRevenue;
+ (NSString *)insightsGrossSales;
+ (NSString *)insightsVsLastPeriod;
+ (NSString *)insightsNumOrders;
+ (NSString *)insightsNewCustomers;
+ (NSString *)insightsRepeatCustomers;
+ (NSString *)insightsAvgOrderValue;

#pragma mark Orders - General
+ (NSString *)orders;
+ (NSString *)ordersAdvancedSearch;
+ (NSString *)ordersAdvancedSearchTitle;
+ (NSString *)ordersErrorWhileSearching;
+ (NSString *)ordersAssignToNobody;

+ (NSString *)ordersSortBy;
+ (NSString *)ordersSortItemName;
+ (NSString *)ordersSortItemSku;
+ (NSString *)ordersSortTag;

+ (NSString *)ordersFilterBy;
+ (NSString *)ordersFilterClear;
+ (NSString *)ordersFilterStore;
+ (NSString *)ordersFilterDestination;
+ (NSString *)ordersFilterAssignee;

#pragma mark Orders - Statuses
+ (NSString *)awaitingPayment;
+ (NSString *)onHold;
+ (NSString *)awaitingShipment;
+ (NSString *)pendingFulfillment;
+ (NSString *)shipped;
+ (NSString *)cancelled;
+ (NSString *)processing;
+ (NSString *)unknownStatus;

#pragma mark Orders - Dropdown
+ (NSString *)ordersDropdownBarcodeScanTitle;
+ (NSString *)ordersDropdownBarcodeScanText;
+ (NSString *)orderDropdownNewOrder;

#pragma mark Orders - Bulk Actions

+ (NSString *)ordersBulkTagOrders;
+ (NSString *)ordersBulkTagTitlePlural;
+ (NSString *)ordersBulkTagTitleSingular;

+ (NSString *)ordersBulkHoldOrders;

+ (NSString *)ordersBulkCancelOrders;
+ (NSString *)ordersBulkCancelOrdersMessagePlural:(unsigned long)intValue;
+ (NSString *)ordersBulkCancelOrdersMessageSingular;
+ (NSString *)ordersBulkCancelOrdersError;

+ (NSString *)ordersBulkApplyPreset;
+ (NSString *)ordersBulkApplyPresetSuccessPlural:(unsigned long)intValue;
+ (NSString *)ordersBulkApplyPresetSuccessSingular;
+ (NSString *)ordersBulkUpdate;
+ (NSString *)ordersBulkAssignTo;
+ (NSString *)ordersBulkRevalidateAddresses;

#pragma mark Orders - List View
+ (NSString *)ordersItemNameSortNoItems;
+ (NSString *)ordersItemNameSortMultipleItems;
+ (NSString *)ordersListSelect;
+ (NSString *)ordersListDeselect;
+ (NSString *)ordersListNoRecords;
+ (NSString *)ordersListSort;
+ (NSString *)ordersListFilters;
+ (NSString *)ordersListItemCountSingular;
+ (NSString *)ordersListItemCountPlural;
+ (NSString *)ordersListItemCountNone;
+ (NSString *)ordersListSku;
+ (NSString *)ordersListItem;
+ (NSString *)ordersListAge;
+ (NSString *)ordersListDate;

#pragma mark New Order
+ (NSString *)newOrderManualOrder;
+ (NSString *)newOrderFailedToRetrieveOrder;
+ (NSString *)newOrderAuto;

#pragma mark Speech to Text
+ (NSString *)speechToTextEnableDictation;
+ (NSString *)speechToTextEngineError;
+ (NSString *)speechToTextListening;
+ (NSString *)speechToTextNotSupportedLocale;
+ (NSString *)speechRecognizerError;
+ (NSString *)speechToTextAddressParsingError;

#pragma mark Order Details
+ (NSString *)orderDetails;
+ (NSString *)orderDetailsLoadingOrder;
+ (NSString *)orderDetailsFailedToLoadOrder;

+ (NSString *)editOrderItems;
+ (NSString *)item;
+ (NSString *)deleteStr;
+ (NSString *)productNameRequired;
+ (NSString *)sku;
+ (NSString *)productNameIsRequiredMessage;
+ (NSString *)noLineItemsMessage;
+ (NSString *)plusAddAnItem;

+ (NSString *)createReturn;

+ (NSString *)trackingNumberShort;
+ (NSString *)notifyCustomer;
+ (NSString *)notifyMarketplace;
+ (NSString *)markAsShippedEmphasis;
+ (NSString *)ignoreAndMarkAsShipped;

+ (NSString *)autoAssign;
+ (NSString *)emailTo;
+ (NSString *)insufficientFunds;
+ (NSString *)shipOrderInsufficientFundsMessage;
+ (NSString *)shipOrderErrorObtainingRates;
+ (NSString *)shipOrderErrorShipping;

+ (NSString *)returnStr;
+ (NSString *)shipment;

+ (NSString *)errorFailedToRefreshPrinters;
+ (NSString *)errorUpdatingOrders;
+ (NSString *)errorReturningShipment;
+ (NSString *)fulfillmentSuccessfullySubmitted;
+ (NSString *)problemSavingThis;

+ (NSString *)returnHasBeenCreatedTitle;
+ (NSString *)returnHasBeenCreatedMessage;
+ (NSString *)rmaNumberShort;
+ (NSString *)returningParty;
+ (NSString *)returningTo;
+ (NSString *)shippingMethod;
+ (NSString *)returnPrintTitle;
+ (NSString *)returnPrintMessage;

+ (NSString *)returnModeRmaMessage;
+ (NSString *)shipOrderFeesMessage;

+ (NSString *)updatingNotes;
+ (NSString *)successfullyUpdatedNotes;
+ (NSString *)errorOccurredWhileSavingNotes;

+ (NSString *)itemOptions;

+ (NSString *)modifyAddress;
+ (NSString *)saveChanges;
+ (NSString *)email;
+ (NSString *)phone;
+ (NSString *)recipientName;
+ (NSString *)companyName;
+ (NSString *)address;
+ (NSString *)addressVerifiedPlural;
+ (NSString *)addressVerifiedErrorPlural;
+ (NSString *)addressVerifiedSingular;
+ (NSString *)addressVerifiedErrorSingular;
+ (NSString *)postalCode;
+ (NSString *)stateRegion;

+ (NSString *)errorOccurredWhileSavingOrder;

#pragma mark Printing
+ (NSString *)printingPrintWith;
+ (NSString *)printingShippingLabel;
+ (NSString *)printingLabel;
+ (NSString *)printingPackingSlip;
+ (NSString *)printingEndOfDay;
+ (NSString *)printingOrderSummary;
+ (NSString *)printingPickList;
+ (NSString *)printingReturnLabel;

+ (NSString *)printingPreview;
+ (NSString *)printingConnect;
+ (NSString *)printingErrorMailNotSetup;
+ (NSString *)printingEmail;

+ (NSString *)printingLoadingDocument;
+ (NSString *)printingStartedPrintJob;
+ (NSString *)printingUnableToStartPrintJob;
+ (NSString *)printingFailedToLoadDocument;

+ (NSString *)printingOrdersEmailSubjectPlural;
+ (NSString *)printingOrdersEmailSubjectSingular;
+ (NSString *)printingSavedEmail;
+ (NSString *)printingSentEmail;
+ (NSString *)printingFailedEmail;

+ (NSString *)printingPreviewOpen;
+ (NSString *)printingPreviewOpenWith;
+ (NSString *)printingViewForScanning;
+ (NSString *)printingPrint;
+ (NSString *)printingRefreshPrinters;

#pragma mark Shipments/Returns
+ (NSString *)shipmentsOutstanding;
+ (NSString *)shipmentsRecentShipments;
+ (NSString *)shipmentsReceived;
+ (NSString *)shipmentsVoided;
+ (NSString *)shipmentsVoidLabel;
+ (NSString *)shipmentsVoidShipment;
+ (NSString *)shipmentsVoidShipmentMessage;
+ (NSString *)shipmentsInTransit;
+ (NSString *)shipmentsDelivered;
+ (NSString *)shipmentsDeliveryException;
+ (NSString *)shipmentStatusUnknown;

+ (NSString *)trackingEvents;
+ (NSString *)trackOnCarrierSite;
+ (NSString *)trackOnSite;
+ (NSString *)trackingURLNotFound;
+ (NSString *)trackingNumberNoRecordsFound;

+ (NSString *)errorOccurredWhileLoading;
+ (NSString *)errorOccurredWhileSearching;

#pragma mark Shipment/Return Details
+ (NSString *)shipmentDetails;
+ (NSString *)shipmentReturnDetails;
+ (NSString *)shipmentDetailsOrderOrStoreDeactived;
+ (NSString *)shipmentDetailsOrderOrStoreDeactivedMessage;

+ (NSString *)shipmentDetailsResendReturnLabel;
+ (NSString *)shipmentDetailsResendReturnLabelMessage;
+ (NSString *)shipmentDetailsFailedToResendReturnLabel;
+ (NSString *)shipmentDetailsReturnLabelSentSuccessfully;

+ (NSString *)shipmentDetailsMarkReturn;
+ (NSString *)shipmentDetailsReceivedOn;
+ (NSString *)shipmentDetailsFailedtoMarkReturnAsReceived;

+ (NSString *)shipmentDetailsLabelAndDocuments;
+ (NSString *)shipmentDetailsProcessingStatus;
+ (NSString *)shipmentDetailsReturnTo;
+ (NSString *)shipmentDetailsResentEmail;
+ (NSString *)shipmentDetailsFailedToResendEmail;
+ (NSString *)shipmentDetailsReprocessedShipment;

+ (NSString *)shipmentDetailsFailedToNotifyMarketplace;
+ (NSString *)shipmentDetailsMarketplaceNotified;
+ (NSString *)shipmentDetailsMarketplaceNotificationNotProcessed;

+ (NSString *)shipmentDetailsFailedToNotifyCustomer;
+ (NSString *)shipmentDetailsCustomerNotified;
+ (NSString *)shipmentDetailsCustomerNotificationNotProcessed;

+ (NSString *)shipmentDetailsReprocessShipment;
+ (NSString *)shipmentDetailsResendConfirmationEmail;

#pragma mark Fulfillments
+ (NSString *)shipmentsRecentFulfillments;
+ (NSString *)shipmentsPending;

#pragma mark Fulfillment Details;
+ (NSString *)fulfillmentDetails;

#pragma mark End of Day
+ (NSString *)endOfDayNoOpenShipments;
+ (NSString *)endOfDayNoOpenOrClosedShipments;
+ (NSString *)endOfDayNoClosedShipments;

+ (NSString *)endOfDayCloseCarrierShipmentsPlural:(unsigned long)numShipments carrier:(NSString *)carrier;
+ (NSString *)endOfDayCloseCarrierShipmentsSingularWithCarrier:(NSString *)carrier;
+ (NSString *)endOfDayPrintEndOfDayForm;
+ (NSString *)endOfDayPrintForShipmentsPlural:(unsigned long)numShipments;
+ (NSString *)endOfDayPrintForShipmentsSingular;
+ (NSString *)endOfDayFailedToCloseShipmentsPlural;
+ (NSString *)endOfDayFailedToCloseShipmentsSingular;
+ (NSString *)endOfDayFailedToGetOpenOrderSummary;
+ (NSString *)endOfDayFailedToGetClosedShipments;
+ (NSString *)endOfDayClosedShipments;
+ (NSString *)endOfDayBarcodeValue;

+ (NSString *)endOfDayErrorsEncounteredWhenClosingShipments;

#pragma mark Rate Calculator
+ (NSString *)rateCalculatorNoCarriers;
+ (NSString *)rateCalculatorNotSupported;

#pragma mark Settings
+ (NSString *)settingsNoPermissions;
+ (NSString *)settingsMobileSettings;
+ (NSString *)settingsNotifications;
+ (NSString *)settingsOrderList;
+ (NSString *)settingsPrintMethods;
+ (NSString *)settingsEndOfDayForms;

+ (NSString *)settingsNotificationsForNewOrders;
+ (NSString *)settingsItemSku;
+ (NSString *)settingsItemName;
+ (NSString *)settingsOrderAge;
+ (NSString *)settingsOrderDate;
+ (NSString *)settingsBarcode;

#pragma mark Miscellaneous
+ (NSString *)pick;
+ (NSString *)tapToChoose;
+ (NSString *)pickAnOption;

+ (NSString *)assignedUserToOrdersPlural;
+ (NSString *)assignedUserToOrdersSingular;
+ (NSString *)failedToAssignUser;

+ (NSString *)copiedToClipboard;
+ (NSString *)failedToRefreshStore;
+ (NSString *)loginErrorCode511;
+ (NSString *)loginErrorCode512;
+ (NSString *)errorLoggingIn;
+ (NSString *)deviceFailedToRegister;

+ (NSString *)overview;
+ (NSString *)operations;
+ (NSString *)sales;
+ (NSString *)customRange;;

+ (NSString *)dropIn;
+ (NSString *)newDropIn;
+ (NSString *)failedToDropIn;
+ (NSString *)stopDropIn;
+ (NSString *)failedToStopDropIn;

+ (NSString *)markAsReceived;
+ (NSString *)resendLabel;
+ (NSString *)revenue;
+ (NSString *)numberItemsSold;

+ (NSString *)shipmentStatus;
+ (NSString *)shipmentStatusMessage;
+ (NSString *)fulfillmentStatus;
+ (NSString *)fulfillmentStatusMessage;
+ (NSString *)createLabel;
+ (NSString *)returnCreatedTitle;
+ (NSString *)returnCreatedMessage;
+ (NSString *)pasteAddress;
+ (NSString *)success;

+ (NSString *)residentialAddressVerified;
+ (NSString *)commercialAddressVerified;
+ (NSString *)internationalAddressVerified;
+ (NSString *)addressHasNotBeenVerified;
+ (NSString *)nonUSAddressesCannotBeVerified;

+ (NSString *)shipsuranceDiscountInsurance;
+ (NSString *)carrierInsurance;
+ (NSString *)otherExternalInsurance;

#pragma mark Submit Feedback - React Native/Native
+ (NSString *)submitFeedback;
+ (NSString *)submitFeedbackMessage;
+ (NSString *)submitFeedbackSubmitted;
+ (NSString *)submitFeedbackError;
+ (NSString *)submitFeedbackEnterValidText;

+ (NSString *)biometricDisabled;
+ (NSString *)enable;
+ (NSString *)faceID;
+ (NSString *)touchID;
+ (NSString *)signInAs;
+ (NSString *)viewHistory;

#pragma mark Colors

+ (UIColor *)submitFeedbackColor;
+ (UIColor *)submitFeedbackColorPressed;
+ (UIColor *)tappableIconBlueColor;
+ (UIColor *)filterPopTextColor;
+ (UIColor *)xButtonColor;
+ (UIColor *)connectCancelColor;
+ (UIColor *)platinumColor;
+ (UIColor *)lightPlatinumColor;
+ (UIColor *)printGreenColorNormal;
+ (UIColor *)printGreenColorHighlighted;
+ (UIColor *)filterGrayColor;
+ (UIColor *)offWhiteColor;
+ (UIColor *)offWhite2Color;
+ (UIColor *)impersonationNavColor;
+ (UIColor *)refreshHighlightedColor;

+ (UIColor *)textMutedColor;
+ (UIColor *)textPrimaryColor;
+ (UIColor *)textErrorColor;
+ (UIColor *)textWarningColor;
+ (UIColor *)boulderColor;
+ (UIColor *)placeholderColor;
+ (UIColor *)currencyGreenColor;
+ (UIColor *)tableViewBackgroundMessageColor;
+ (UIColor *)appBlueColorSemiClear;

+ (UIColor *)primaryTextLightColor;
+ (UIColor *)textSuccessColor;
+ (UIColor *)orderDetailButtonPrimaryColor;
+ (UIColor *)secondaryButtonColor;
+ (UIColor *)buttonBorderColor;
+ (UIColor *)backgroundBeige;
+ (UIColor *)disabledGrayButtonColor;
+ (UIColor *)activeGreenButtonColor;
+ (UIColor *)activeGreenButtonColorPressed;
+ (UIColor *)appBlueColor;
+ (UIColor *)sectionHeaderColor;
+ (UIColor *)tappableSectionHeaderColor;
+ (UIColor *)cellTitleColor;
+ (UIColor *)blueGrayColor;
+ (UIColor *)keyboardBarColor;
+ (UIColor *)darkGray3Color;
+ (UIColor *)darkGray2Color;
+ (UIColor *)darkGrayColor;
+ (UIColor *)darkDarkGrayColor;
+ (UIColor *)insightsGreenColor;
+ (UIColor *)insightsGreenLightColor;
+ (UIColor *)selectionCircleGray;
+ (CGFloat)badgeCornerRadius;

+ (UIColor *)chartDarkBlueColor;
+ (UIColor *)chartLightBlueColor;
+ (UIColor *)chartLightLightGrayColor;
+ (NSArray *)ageChartColors;
+ (UIColor *)ageChartEmptyColor;
+ (UIColor *)ageChartLabelColor;
+ (NSArray *)carrierChartColors;
+ (UIColor *)chartGrayColor;
+ (UIColor *)chartDarkGrayColor;

+ (UIColor *)topNavColor;
+ (UIColor *)sideNavGreenColor;
+ (UIColor *)sideNavGrayColor;
+ (UIColor *)sideNavTextColor;
+ (UIColor *)sideNavSeparatorColor;
+ (UIColor *)sideNavSelectedColor;

+ (UIColor *)deselectedEODButtonColor;
+ (UIColor *)learnMoreTextColor;
+ (UIColor *)loginHUDBackgroundColor;
+ (UIColor *)loginWhiteColor;

+ (UIColor *)addLineItemNormalColor;
+ (UIColor *)addLineItemHighlightedColor;
+ (UIColor *)autoCompleteBackGroundColor;
+ (UIColor *)ageGreen;
+ (UIColor *)ageBrown;
+ (UIColor *)ageRed;

+ (UIColor *)actionSheetRed;
+ (UIColor *)separatorLightGray;
+ (UIColor *)aluminumColor;
+ (UIColor *)sortFilterButtonTextColor;
+ (UIColor *)lightBlueColor;
+ (UIColor *)borderGray;
+ (UIColor *)dateRangeBlue;

@end
