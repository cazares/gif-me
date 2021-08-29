//
//  SHSNConstants.m
//  SHSNShipStationViewer
//
//  Created by Miguel Cazares on 2/10/15.
//  Copyright (c) 2015 ShipStation. All rights reserved.
//

#import "SSNConstants.h"
#import "NSString+Util.h"

#define HEXCOLOR(c) [UIColor colorWithRed:((c>>24)&0xff)/255.0 green:((c>>16)&0xff)/255.0 blue:((c>>8)&0xff)/255.0 alpha:((c)&0xff)/255.0]

@implementation SSNConstants

#pragma mark General
+ (NSString *)loading {
    return [NSString localizedStringWithKey:@"loading"];
}

+ (NSString *)searching {
    return [NSString localizedStringWithKey:@"searching"];
}

+ (NSString *)saving {
    return [NSString localizedStringWithKey:@"saving"];
}

+ (NSString *)saved {
    return [NSString localizedStringWithKey:@"saved"];
}

+ (NSString *)error {
    return [NSString localizedStringWithKey:@"error"];
}

+ (NSString *)today {
    return [NSString localizedStringWithKey:@"today"];
}

+ (NSString *)yesterday {
    return [NSString localizedStringWithKey:@"yesterday"];
}

+ (NSString *)lastSevenDays {
    return [NSString localizedStringWithKey:@"last_seven_days"];
}

+ (NSString *)lastThirtyDays {
    return [NSString localizedStringWithKey:@"last_thirty_days"];
}

+ (NSString *)thisMonth {
    return [NSString localizedStringWithKey:@"this_month"];
}

+ (NSString *)lastMonth {
    return [NSString localizedStringWithKey:@"last_month"];
}

+ (NSString *)custom {
    return [NSString localizedStringWithKey:@"custom"];
}

+ (NSString *)done {
    return [NSString localizedStringWithKey:@"done"];
}

+ (NSString *)reset {
    return [NSString localizedStringWithKey:@"reset"];
}

+ (NSString *)notAvailable {
    return [NSString localizedStringWithKey:@"not_available"];
}

+ (NSString *)selectShipFrom {
    return [NSString localizedStringWithKey:@"select_ship_from"];
}

+ (NSString *)selectCountry {
    return [NSString localizedStringWithKey:@"select_country"];
}

+ (NSString *)zipCode {
    return [NSString localizedStringWithKey:@"zip_code"];
}

+ (NSString *)previous {
    return [NSString localizedStringWithKey:@"previous"];
}

+ (NSString *)next {
    return [NSString localizedStringWithKey:@"next"];
}

+ (NSString *)selectService {
    return [NSString localizedStringWithKey:@"select_service"];
}

+ (NSString *)selectAddressType {
    return [NSString localizedStringWithKey:@"select_address_type"];
}

+ (NSString *)selectConfirmation {
    return [NSString localizedStringWithKey:@"select_confirmation"];
}

+ (NSString *)selectPackageType {
    return [NSString localizedStringWithKey:@"select_package_type"];
}

+ (NSString *)allCarriers {
    return [NSString localizedStringWithKey:@"all_carriers"];
}

+ (NSString *)yourPackaging {
    return [NSString localizedStringWithKey:@"your_packaging"];
}

+ (NSString *)required {
    return [NSString localizedStringWithKey:@"required"];
}

+ (NSString *)shipFrom {
    return [NSString localizedStringWithKey:@"ship_from"];
}

+ (NSString *)country {
    return [NSString localizedStringWithKey:@"country"];
}

+ (NSString *)shipTo {
    return [NSString localizedStringWithKey:@"ship_to"];
}

+ (NSString *)packageWeight {
    return [NSString localizedStringWithKey:@"package_weight"];
}

+ (NSString *)insuredValue {
    return [NSString localizedStringWithKey:@"insured_value"];
}

+ (NSString *)optional {
    return [NSString localizedStringWithKey:@"optional"];
}

+ (NSString *)serviceClass {
    return [NSString localizedStringWithKey:@"service_class"];
}

+ (NSString *)addressType {
    return [NSString localizedStringWithKey:@"address_type"];
}

+ (NSString *)confirmation {
    return [NSString localizedStringWithKey:@"confirmation"];
}

+ (NSString *)packageType {
    return [NSString localizedStringWithKey:@"package_type"];
}

+ (NSString *)packageSize {
    return [NSString localizedStringWithKey:@"package_size"];
}

+ (NSString *)getRates {
    return [NSString localizedStringWithKey:@"get_rates"];
}

+ (NSString *)shipFromLocation {
    return [NSString localizedStringWithKey:@"ship_from_location"];
}

+ (NSString *)shipFromLocationRequired {
    return [NSString localizedStringWithKey:@"ship_from_location_required"];
}

+ (NSString *)domestic {
    return [NSString localizedStringWithKey:@"domestic"];
}

+ (NSString *)international {
    return [NSString localizedStringWithKey:@"international"];
}

+ (NSString *)orderDate {
    return [NSString localizedStringWithKey:@"order_date"];
}

+ (NSString *)none {
    return [NSString localizedStringWithKey:@"none"];
}

+ (NSString *)tags {
    return [NSString localizedStringWithKey:@"tags"];
}

+ (NSString *)unexpectedErrorTitle {
    return [NSString localizedStringWithKey:@"unexpected_error_title"];
}

+ (NSString *)unexpectedErrorMessage {
    return [NSString localizedStringWithKey:@"unexpected_error_message"];
}

+ (NSString *)unknownErrorOccurred {
    return [NSString localizedStringWithKey:@"unknown_error_occurred"];
}

+ (NSString *)newOrders {
    return [NSString localizedStringWithKey:@"new_orders"];
}

+ (NSString *)showLess {
    return [NSString localizedStringWithKey:@"show_less"];
}

+ (NSString *)showAll {
    return [NSString localizedStringWithKey:@"show_all"];
}

+ (NSString *)noRecords {
    return [NSString localizedStringWithKey:@"no_records"];
}

+ (NSString *)noShipments {
    return [NSString localizedStringWithKey:@"no_shipments"];
}

+ (NSString *)noPriorShipments {
    return [NSString localizedStringWithKey:@"no_prior_shipments"];
}

+ (NSString *)shipments {
    return [NSString localizedStringWithKey:@"shipments"];
}

+ (NSString *)recipient {
    return [NSString localizedStringWithKey:@"recipient"];
}

+ (NSString *)rateCalculator {
    return [NSString localizedStringWithKey:@"rate_calculator"];
}

+ (NSString *)ground {
    return [NSString localizedStringWithKey:@"ground"];
}

+ (NSString *)threePlusDays {
    return [NSString localizedStringWithKey:@"three_plus_days"];
}

+ (NSString *)twoDays {
    return [NSString localizedStringWithKey:@"two_days"];
}

+ (NSString *)oneDay {
    return [NSString localizedStringWithKey:@"one_day"];
}

+ (NSString *)residential {
    return [NSString localizedStringWithKey:@"residential"];
}

+ (NSString *)commercial {
    return [NSString localizedStringWithKey:@"commercial"];
}

+ (NSString *)noConfirmation {
    return [NSString localizedStringWithKey:@"no_confirmation"];
}

+ (NSString *)delivery {
    return [NSString localizedStringWithKey:@"delivery"];
}

+ (NSString *)signature {
    return [NSString localizedStringWithKey:@"signature"];
}

+ (NSString *)adultSignature {
    return [NSString localizedStringWithKey:@"adult_signature"];
}

+ (NSString *)trackingNumber {
    return [NSString localizedStringWithKey:@"tracking_number"];
}

+ (NSString *)carrier {
    return [NSString localizedStringWithKey:@"carrier"];
}

+ (NSString *)service {
    return [NSString localizedStringWithKey:@"service"];
}

+ (NSString *)shipDate {
    return [NSString localizedStringWithKey:@"ship_date"];
}

+ (NSString *)createDate {
    return [NSString localizedStringWithKey:@"create_date"];
}

+ (NSString *)shippingCost {
    return [NSString localizedStringWithKey:@"shipping_cost"];
}

+ (NSString *)orderNumber {
    return [NSString localizedStringWithKey:@"order_number"];
}

+ (NSString *)createdBy {
    return [NSString localizedStringWithKey:@"created_by"];
}

+ (NSString *)provider {
    return [NSString localizedStringWithKey:@"provider"];
}

+ (NSString *)company {
    return [NSString localizedStringWithKey:@"company"];
}

+ (NSString *)addressLineOne {
    return [NSString localizedStringWithKey:@"address_line_one"];
}

+ (NSString *)addressLineTwo {
    return [NSString localizedStringWithKey:@"address_line_two"];
}

+ (NSString *)city {
    return [NSString localizedStringWithKey:@"city"];
}

+ (NSString *)state {
    return [NSString localizedStringWithKey:@"state"];
}

+ (NSString *)zip {
    return [NSString localizedStringWithKey:@"zip"];
}

+ (NSString *)phoneNumberShort {
    return [NSString localizedStringWithKey:@"phone_number_short"];
}

+ (NSString *)emailAddress {
    return [NSString localizedStringWithKey:@"email_address"];
}

+ (NSString *)orderNumberShort {
    return [NSString localizedStringWithKey:@"order_number_short"];
}

+ (NSString *)autoGenerate {
    return [NSString localizedStringWithKey:@"auto_generate"];
}

+ (NSString *)paidDate {
    return [NSString localizedStringWithKey:@"paid_date"];
}

+ (NSString *)amountPaid {
    return [NSString localizedStringWithKey:@"amount_paid"];
}

+ (NSString *)shippingPaid {
    return [NSString localizedStringWithKey:@"shipping_paid"];
}

+ (NSString *)taxPaid {
    return [NSString localizedStringWithKey:@"tax_paid"];
}

+ (NSString *)orderLineItems {
    return [NSString localizedStringWithKey:@"order_line_items"];
}

+ (NSString *)addALineItem {
    return [NSString localizedStringWithKey:@"add_a_line_item"].tripleDots;
}

+ (NSString *)datePaid {
    return [NSString localizedStringWithKey:@"date_paid"];
}

+ (NSString *)serviceRequested {
    return [NSString localizedStringWithKey:@"service_requested"];
}

+ (NSString *)saveOrder {
    return [NSString localizedStringWithKey:@"save_order"];
}

+ (NSString *)saveAndCreateAnother {
    return [NSString localizedStringWithKey:@"save_and_create_another"];
}

+ (NSString *)saveAndShip {
    return [NSString localizedStringWithKey:@"save_and_ship"];
}

+ (NSString *)failedToSaveOrder {
    return [NSString localizedStringWithKey:@"failed_to_save_order"];
}

+ (NSString *)noItemsFound {
    return [NSString localizedStringWithKey:@"no_items_found"];
}

+ (NSString *)failedToLoadShipment {
    return [NSString localizedStringWithKey:@"failed_to_load_shipment"];
}

+ (NSString *)failedToLoadFulfillment {
    return [NSString localizedStringWithKey:@"failed_to_load_fulfillment"];
}

+ (NSString *)edit {
    return [NSString localizedStringWithKey:@"edit"];
}

+ (NSString *)preset {
    return [NSString localizedStringWithKey:@"preset"];
}

+ (NSString *)fromDate {
    return [NSString localizedStringWithKey:@"from_date"];
}
+ (NSString *)toDate {
    return [NSString localizedStringWithKey:@"to_date"];
}

+ (NSString *)savedOrderItems {
    return [NSString localizedStringWithKey:@"saved_order_items"];
}

+ (NSString *)savedOrderItemsError {
    return [NSString localizedStringWithKey:@"saved_order_items_error"];
}

+ (NSString *)noLineItems {
    return [NSString localizedStringWithKey:@"no_line_items"];
}

+ (NSString *)orderAlreadyShippedTitle {
    return [NSString localizedStringWithKey:@"order_already_shipped_title"];
}

+ (NSString *)orderAlreadyShippedMessage {
    return [NSString localizedStringWithKey:@"order_already_shipped_message"];
}

+ (NSString *)actions {
    return [NSString localizedStringWithKey:@"actions"];
}

+ (NSString *)failedToCancelOrder {
    return [NSString localizedStringWithKey:@"failed_to_cancel_order"];
}

+ (NSString *)failedToPlaceOrderOnHold {
    return [NSString localizedStringWithKey:@"failed_to_place_order_on_hold"];
}

+ (NSString *)holdUntil {
    return [NSString localizedStringWithKey:@"hold_until"];
}

+ (NSString *)restore {
    return [NSString localizedStringWithKey:@"restore"];
}

+ (NSString *)orderWillBeMovedToAwaitingShipment {
    return [NSString localizedStringWithKey:@"order_will_be_moved_to_awaiting_shipment"];
}

+ (NSString *)failedToRestoreOrder {
    return [NSString localizedStringWithKey:@"failed_to_restore_order"];
}

+ (NSString *)markAsShipped {
    return [NSString localizedStringWithKey:@"mark_as_shipped"];
}

+ (NSString *)createReturnLabel {
    return [NSString localizedStringWithKey:@"create_return_label"];
}

+ (NSString *)appliedPreset {
    return [NSString localizedStringWithKey:@"applied_preset"];
}

+ (NSString *)failedToApplyPreset {
    return [NSString localizedStringWithKey:@"failed_to_apply_preset"];
}

+ (NSString *)shipping {
    return [NSString localizedStringWithKey:@"shipping"];
}

+ (NSString *)details {
    return [NSString localizedStringWithKey:@"details"];
}

+ (NSString *)items {
    return [NSString localizedStringWithKey:@"items"];
}

+ (NSString *)assignedTo {
    return [NSString localizedStringWithKey:@"assigned_to"];
}

+ (NSString *)notes {
    return [NSString localizedStringWithKey:@"notes"];
}

+ (NSString *)package {
    return [NSString localizedStringWithKey:@"package_ss"];
}

+ (NSString *)insurance {
    return [NSString localizedStringWithKey:@"insurance"];
}

+ (NSString *)weight {
    return [NSString localizedStringWithKey:@"weight"];
}

+ (NSString *)dimensions {
    return [NSString localizedStringWithKey:@"dimensions"];
}

+ (NSString *)tapToAddTags{
    return [NSString localizedStringWithKey:@"tap_to_add_tags"];
}

+ (NSString *)fromTheCustomer {
    return [NSString localizedStringWithKey:@"from_the_customer"];
}

+ (NSString *)toTheCustomer {
    return [NSString localizedStringWithKey:@"to_the_customer"];
}

+ (NSString *)internalNotes {
    return [NSString localizedStringWithKey:@"internal_notes"];
}

+ (NSString *)tapToAddANote {
    return [NSString localizedStringWithKey:@"tap_to_add_a_note"];
}

+ (NSString *)onHoldUntil {
    return [NSString localizedStringWithKey:@"on_hold_until"];
}


+ (NSString *)orderHistory {
    return [NSString localizedStringWithKey:@"order_history"];
}

+ (NSString *)close {
    return [NSString localizedStringWithKey:@"close"];
}

+ (NSString *)unit {
    return [NSString localizedStringWithKey:@"unit"];
}

+ (NSString *)quantity_short {
    return [NSString localizedStringWithKey:@"quantity_short"];
}

+ (NSString *)total {
    return [NSString localizedStringWithKey:@"total"];
}

+ (NSString *)balance {
    return [NSString localizedStringWithKey:@"balance"];
}

+ (NSString *)totalCost {
    return [NSString localizedStringWithKey:@"total_cost"];
}

+ (NSString *)warehouse {
    return [NSString localizedStringWithKey:@"warehouse"];
}

+ (NSString *)closedDate {
    return [NSString localizedStringWithKey:@"closed_date"];
}

+ (NSString *)name {
    return [NSString localizedStringWithKey:@"name"];
}

+ (NSString *)quantity {
    return [NSString localizedStringWithKey:@"quantity"];
}

+ (NSString *)price {
    return [NSString localizedStringWithKey:@"price"];
}

+ (NSString *)iPadSelectOrder {
    return [NSString localizedStringWithKey:@"ipad_select_order"];
}

+ (NSString *)iPadBulkActions {
    return [NSString localizedStringWithKey:@"ipad_bulk_actions"];
}

+ (NSString *)iPadSelectShipment {
    return [NSString localizedStringWithKey:@"ipad_select_shipment"];
}

+ (NSString *)iPadSelectReturn {
    return [NSString localizedStringWithKey:@"ipad_select_return"];
}

+ (NSString *)iPadSelectFulfillment {
    return [NSString localizedStringWithKey:@"ipad_select_fulfillment"];
}

#pragma mark Modal

+ (NSString *)modalOk {
    return [NSString localizedStringWithKey:@"modal_ok"];
}

+ (NSString *)modalNo {
    return [NSString localizedStringWithKey:@"modal_no"];
}

+ (NSString *)modalYes {
    return [NSString localizedStringWithKey:@"modal_yes"];
}

+ (NSString *)modalYesContinue {
    return [NSString localizedStringWithKey:@"modal_yes_continue"];
}

+ (NSString *)modalCancel {
    return [NSString localizedStringWithKey:@"modal_cancel"];
}

+ (NSString *)modalStop {
    return [NSString localizedStringWithKey:@"modal_stop"];
}

+ (NSString *)modalConfirm {
    return [NSString localizedStringWithKey:@"modal_confirm"];
}

+ (NSString *)modalSave {
    return [NSString localizedStringWithKey:@"modal_save"];
}

+ (NSString *)modalHoldOrder {
    return [NSString localizedStringWithKey:@"modal_hold_order"];
}

+ (NSString *)modalHoldUntil {
    return [NSString localizedStringWithKey:@"modal_hold_until"];
}

+ (NSString *)modalSetOrderDate {
    return [NSString localizedStringWithKey:@"modal_set_order_date"];
}

+ (NSString *)modalOrderDate {
    return [NSString localizedStringWithKey:@"modal_order_date"];
}

+ (NSString *)modalSetPaidDate {
    return [NSString localizedStringWithKey:@"modal_set_paid_date"];
}

+ (NSString *)modalPaidDate {
    return [NSString localizedStringWithKey:@"modal_paid_date"];
}

+ (NSString *)modalValidNumberPrompt {
    return [NSString localizedStringWithKey:@"modal_valid_number_prompt"];
}

+ (NSString *)modalContinue {
    return [NSString localizedStringWithKey:@"modal_continue"];
}

+ (NSString *)modalSetShipDate {
    return [NSString localizedStringWithKey:@"modal_set_ship_date"];
}

+ (NSString *)modalShipDate {
    return [NSString localizedStringWithKey:@"modal_ship_date"];
}

+ (NSString *)modalGetRate {
    return [NSString localizedStringWithKey:@"modal_get_rate"];
}

+ (NSString *)modalSaveAndClose {
    return [NSString localizedStringWithKey:@"modal_save_and_close"];
}

+ (NSString *)modalBack {
    return [NSString localizedStringWithKey:@"modal_back"];
}

+ (NSString *)modalCreateReturn {
    return [NSString localizedStringWithKey:@"modal_create_return"];
}

+ (NSString *)modalShipOrder {
    return [NSString localizedStringWithKey:@"modal_ship_order"];
}

#pragma mark Login
+ (NSString *)usernameOrEmail {
    return [NSString localizedStringWithKey:@"username_or_email"];
}

+ (NSString *)password {
    return [NSString localizedStringWithKey:@"password"];
}

+ (NSString *)signIn {
    return [NSString localizedStringWithKey:@"sign_in"];
}

+ (NSString *)noActiveSubscriptionMessage {
    return [NSString localizedStringWithKey:@"no_active_subscription_message"];
}

+ (NSString *)signInAgain {
    return [NSString localizedStringWithKey:@"sign_in_again"];
}

#pragma mark Side Menu
+ (NSString *)sideMenuInsights {
    return [NSString localizedStringWithKey:@"side_menu_insights"];
}

+ (NSString *)sideMenuReturns {
    return [NSString localizedStringWithKey:@"side_menu_returns"];
}

+ (NSString *)sideMenuFulfillments {
    return [NSString localizedStringWithKey:@"side_menu_fulfillments"];
}

+ (NSString *)sideMenuInventory {
    return [NSString localizedStringWithKey:@"side_menu_inventory"];
}

+ (NSString *)sideMenuCalculator {
    return [NSString localizedStringWithKey:@"side_menu_calculator"];
}

+ (NSString *)sideMenuSettings {
    return [NSString localizedStringWithKey:@"side_menu_settings"];
}

+ (NSString *)sideMenuFeedback {
    return [NSString localizedStringWithKey:@"side_menu_feedback"];
}

+ (NSString *)sideMenuLogout {
    return [NSString localizedStringWithKey:@"side_menu_logout"];
}

+ (NSString *)sideMenuLogoutMessage {
    return [NSString localizedStringWithKey:@"side_menu_logout_message"];
}

#pragma mark Stores

+ (NSString *)refreshStoresTitle {
    return [NSString localizedStringWithKey:@"refresh_stores_title"];
}

+ (NSString *)refreshStoresSubtitle {
    return [NSString localizedStringWithKey:@"refresh_stores_subtitle"].tripleDots;
}

+ (NSString *)refreshStoresImportingOrders {
    return [NSString localizedStringWithKey:@"refresh_stores_importing_orders"].tripleDots;
}

+ (NSString *)refreshStoresLastUpdated {
    return [NSString localizedStringWithKey:@"refresh_stores_last_updated"];
}

+ (NSString *)refreshStoresNeverUpdated {
    return [NSString localizedStringWithKey:@"refresh_stores_never_updated"];
}

+ (NSString *)refreshStoresError {
    return [NSString localizedStringWithKey:@"refresh_stores_error"];
}

#pragma mark Insights
+ (NSString *)insightsSalesVsShipments {
    return [NSString localizedStringWithKey:@"insights_sales_vs_shipments"];
}

+ (NSString *)insightsTopGrossingStores {
    return [NSString localizedStringWithKey:@"insights_top_grossing_stores"];
}

+ (NSString *)insightsReadyToShip {
    return [NSString localizedStringWithKey:@"insights_ready_to_ship"];
}

+ (NSString *)insightsOrdersShipped {
    return [NSString localizedStringWithKey:@"insights_orders_shipped"];
}

+ (NSString *)insightsDaysPlural {
    return [NSString localizedStringWithKey:@"insights_days_plural"];
}

+ (NSString *)insightsDaysSingular {
    return [NSString localizedStringWithKey:@"insights_days_singular"];
}

+ (NSString *)insightsCurrentAccountBalances {
    return [NSString localizedStringWithKey:@"insights_current_account_balances"];
}

+ (NSString *)insightsOpenOrderAging {
    return [NSString localizedStringWithKey:@"insights_open_order_aging"];
}

+ (NSString *)insightsShipmentsByCarrier {
    return [NSString localizedStringWithKey:@"insights_shipments_by_carrier"];
}

+ (NSString *)insightsTopShippers {
    return [NSString localizedStringWithKey:@"insights_top_shippers"];
}

+ (NSString *)insightsShippingRevenue {
    return [NSString localizedStringWithKey:@"insights_shipping_revenue"];
}

+ (NSString *)insightsShippingCost {
    return [NSString localizedStringWithKey:@"insights_shipping_cost"];
}

+ (NSString *)insightsItemSales {
    return [NSString localizedStringWithKey:@"insights_item_sales"];
}

+ (NSString *)insightsTopSellingProductsByQty {
    return [NSString localizedStringWithKey:@"insights_top_selling_products_by_qty"];
}

+ (NSString *)insightsTopSellingProductsByRevenue {
    return [NSString localizedStringWithKey:@"insights_top_selling_products_by_revenue"];
}

+ (NSString *)insightsGrossSales {
    return [NSString localizedStringWithKey:@"insights_gross_sales"];
}

+ (NSString *)insightsVsLastPeriod {
    return [NSString localizedStringWithKey:@"insights_vs_last_period"];
}

+ (NSString *)insightsNumOrders {
    return [NSString localizedStringWithKey:@"insights_num_orders"];
}

+ (NSString *)insightsNewCustomers {
    return [NSString localizedStringWithKey:@"insights_new_customers"];
}

+ (NSString *)insightsRepeatCustomers {
    return [NSString localizedStringWithKey:@"insights_repeat_customers"];
}

+ (NSString *)insightsAvgOrderValue {
    return [NSString localizedStringWithKey:@"insights_avg_order_value"];
}

#pragma mark Orders - General
+ (NSString *)orders {
    return [NSString localizedStringWithKey:@"orders"];
}

+ (NSString *)ordersAdvancedSearch {
    return [NSString localizedStringWithKey:@"orders_advanced_search"];
}

+ (NSString *)ordersAdvancedSearchTitle {
    return [NSString localizedStringWithKey:@"orders_advanced_search_title"];
}

+ (NSString *)ordersErrorWhileSearching {
    return [NSString localizedStringWithKey:@"orders_error_while_searching"];
}

+ (NSString *)ordersAssignToNobody {
    return [NSString localizedStringWithKey:@"orders_assign_to_nobody"];
}

+ (NSString *)ordersSortBy {
    return [NSString localizedStringWithKey:@"orders_sort_by"];
}

+ (NSString *)ordersSortItemName {
    return [NSString localizedStringWithKey:@"orders_sort_item_name"];
}

+ (NSString *)ordersSortItemSku {
    return [NSString localizedStringWithKey:@"orders_sort_item_sku"];
}

+ (NSString *)ordersSortTag {
    return [NSString localizedStringWithKey:@"orders_sort_tag"];
}

+ (NSString *)ordersSortOrderDate {
    return [NSString localizedStringWithKey:@"orders_sort_order_date"];
}

+ (NSString *)ordersFilterBy {
    return [NSString localizedStringWithKey:@"orders_filter_by"];
}

+ (NSString *)ordersFilterClear {
    return [NSString localizedStringWithKey:@"orders_filter_clear"];
}

+ (NSString *)ordersFilterStore {
    return [NSString localizedStringWithKey:@"orders_filter_store"];
}

+ (NSString *)ordersFilterDestination {
    return [NSString localizedStringWithKey:@"orders_filter_destination"];
}

+ (NSString *)ordersFilterAssignee {
    return [NSString localizedStringWithKey:@"orders_filter_assignee"];
}

#pragma mark Orders - Statuses
+ (NSString *)awaitingPayment {
    return [NSString localizedStringWithKey:@"orders_awaiting_payment"];
}

+ (NSString *)onHold {
    return [NSString localizedStringWithKey:@"orders_on_hold"];
}

+ (NSString *)awaitingShipment {
    return [NSString localizedStringWithKey:@"orders_awaiting_shipment"];
}

+ (NSString *)pendingFulfillment {
    return [NSString localizedStringWithKey:@"orders_pending_fulfillment"];
}

+ (NSString *)shipped {
    return [NSString localizedStringWithKey:@"orders_shipped"];
}

+ (NSString *)cancelled {
    return [NSString localizedStringWithKey:@"orders_cancelled"];
}

+ (NSString *)processing {
    return [NSString localizedStringWithKey:@"orders_processing"];
}

+ (NSString *)unknownStatus {
    return [NSString localizedStringWithKey:@"orders_unknown_status"];
}

#pragma mark Orders - Dropdown
+ (NSString *)ordersDropdownBarcodeScanTitle {
    return [NSString localizedStringWithKey:@"orders_dropdown_barcode_scan_title"];
}

+ (NSString *)ordersDropdownBarcodeScanText {
    return [NSString localizedStringWithKey:@"orders_dropdown_barcode_scan_text"];
}

+ (NSString *)orderDropdownNewOrder {
    return [NSString localizedStringWithKey:@"orders_dropdown_new_order"];
}

#pragma mark Orders - Bulk Actions

+ (NSString *)ordersBulkTagOrders {
    return [NSString localizedStringWithKey:@"orders_bulk_tag_orders"];
}

+ (NSString *)ordersBulkTagTitlePlural {
    return [NSString localizedStringWithKey:@"orders_bulk_tag_title_plural"].tripleDots;
}

+ (NSString *)ordersBulkTagTitleSingular {
    return [NSString localizedStringWithKey:@"orders_bulk_tag_title_singular"].tripleDots;
}

+ (NSString *)ordersBulkHoldOrders {
    return [NSString localizedStringWithKey:@"orders_bulk_hold_orders"];
}

+ (NSString *)ordersBulkCancelOrders {
    return [NSString localizedStringWithKey:@"orders_bulk_cancel_orders"];
}

+ (NSString *)ordersBulkCancelOrdersMessagePlural:(unsigned long)intValue {
    return [NSString localizedStringWithKey:@"orders_bulk_cancel_orders_message_plural" intValue:intValue];
}

+ (NSString *)ordersBulkCancelOrdersMessageSingular {
    return [NSString localizedStringWithKey:@"orders_bulk_cancel_orders_message_singular"];
}

+ (NSString *)ordersBulkCancelOrdersError {
    return [NSString localizedStringWithKey:@"orders_bulk_cancel_orders_error"];
}

+ (NSString *)ordersBulkApplyPreset {
    return [NSString localizedStringWithKey:@"orders_bulk_apply_preset"];
}

+ (NSString *)ordersBulkApplyPresetSuccessPlural:(unsigned long)intValue {
    return [NSString localizedStringWithKey:@"orders_bulk_apply_preset_success_plural" intValue:intValue];
}

+ (NSString *)ordersBulkApplyPresetSuccessSingular {
    return [NSString localizedStringWithKey:@"orders_bulk_apply_preset_success_singular"];
}

+ (NSString *)ordersBulkUpdate {
    return [NSString localizedStringWithKey:@"orders_bulk_update"];
}

+ (NSString *)ordersBulkAssignTo {
    return [NSString localizedStringWithKey:@"orders_bulk_assign_to"];
}

+ (NSString *)ordersBulkRevalidateAddresses {
    return [NSString localizedStringWithKey:@"orders_bulk_revalidate_addresses"];
}

#pragma mark Orders - List View
+ (NSString *)ordersItemNameSortNoItems {
    return [NSString localizedStringWithKey:@"orders_item_name_sort_no_items"];
}

+ (NSString *)ordersItemNameSortMultipleItems {
    return [NSString localizedStringWithKey:@"orders_item_name_sort_multiple_items"];
}

+ (NSString *)ordersListSelect {
    return [NSString localizedStringWithKey:@"orders_list_select"];
}

+ (NSString *)ordersListDeselect {
    return [NSString localizedStringWithKey:@"orders_list_deselect"];
}

+ (NSString *)ordersListNoRecords {
    return [NSString localizedStringWithKey:@"orders_list_no_records"];
}

+ (NSString *)ordersListSort {
    return [NSString localizedStringWithKey:@"orders_list_sort"];
}

+ (NSString *)ordersListFilters {
    return [NSString localizedStringWithKey:@"orders_list_filters"];
}

+ (NSString *)ordersListItemCountSingular {
    return [NSString localizedStringWithKey:@"orders_list_item_count_singular"];
}

+ (NSString *)ordersListItemCountPlural {
    return [NSString localizedStringWithKey:@"orders_list_item_count_plural"];
}

+ (NSString *)ordersListItemCountNone {
    return [NSString localizedStringWithKey:@"orders_list_item_count_none"];
}

+ (NSString *)ordersListSku {
    return [NSString localizedStringWithKey:@"orders_list_sku"];
}

+ (NSString *)ordersListItem {
    return [NSString localizedStringWithKey:@"orders_list_item"];
}

+ (NSString *)ordersListAge {
    return [NSString localizedStringWithKey:@"orders_list_age"];
}

+ (NSString *)ordersListDate {
    return [NSString localizedStringWithKey:@"orders_list_date"];
}

#pragma mark New Order
+ (NSString *)newOrderManualOrder {
    return [NSString localizedStringWithKey:@"new_order_manual_order"];
}

+ (NSString *)newOrderFailedToRetrieveOrder {
    return [NSString localizedStringWithKey:@"new_order_failed_to_retrieve_order"];
}

+ (NSString *)newOrderAuto {
    return [NSString localizedStringWithKey:@"new_order_auto"];
}

#pragma mark Speech to Text
+ (NSString *)speechToTextEnableDictation {
    return [NSString localizedStringWithKey:@"speech_to_text_enable_dictation"];
}

+ (NSString *)speechToTextEngineError {
    return [NSString localizedStringWithKey:@"speech_to_text_engine_error"];
}

+ (NSString *)speechToTextListening {
    return [NSString localizedStringWithKey:@"speech_to_text_listening"];
}

+ (NSString *)speechToTextNotSupportedLocale {
    return [NSString localizedStringWithKey:@"speech_to_text_not_supported_locale"];
}

+ (NSString *)speechRecognizerError {
    return [NSString localizedStringWithKey:@"speech_recognizer_error"];
}

+ (NSString *)speechToTextAddressParsingError {
    return [NSString localizedStringWithKey:@"address_parsing_error"];
}

#pragma mark Order Details
+ (NSString *)orderDetails {
    return [NSString localizedStringWithKey:@"order_details"];
}

+ (NSString *)orderDetailsLoadingOrder {
    return [NSString localizedStringWithKey:@"order_details_loading_order"];
}

+ (NSString *)orderDetailsFailedToLoadOrder {
    return [NSString localizedStringWithKey:@"order_details_failed_to_load_order"];
}

+ (NSString *)editOrderItems {
    return [NSString localizedStringWithKey:@"edit_order_items"];
}

+ (NSString *)item {
    return [NSString localizedStringWithKey:@"item"];
}

+ (NSString *)deleteStr {
    return [NSString localizedStringWithKey:@"delete"];
}

+ (NSString *)productNameRequired {
    return [NSString localizedStringWithKey:@"product_name_required"];
}

+ (NSString *)sku {
    return [NSString localizedStringWithKey:@"sku"];
}

+ (NSString *)productNameIsRequiredMessage {
    return [NSString localizedStringWithKey:@"product_name_is_required_message"];
}

+ (NSString *)noLineItemsMessage {
    return [NSString localizedStringWithKey:@"no_line_items_message"];
}

+ (NSString *)plusAddAnItem {
    return [NSString localizedStringWithKey:@"plus_add_an_item"];
}

+ (NSString *)createReturn {
    return [NSString localizedStringWithKey:@"create_return"];
}

+ (NSString *)trackingNumberShort {
    return [NSString localizedStringWithKey:@"tracking_number_short"];
}

+ (NSString *)notifyCustomer {
    return [NSString localizedStringWithKey:@"notify_customer"];
}

+ (NSString *)notifyMarketplace {
    return [NSString localizedStringWithKey:@"notify_marketplace"];
}

+ (NSString *)markAsShippedEmphasis {
    return [NSString localizedStringWithKey:@"mark_as_shipped_emphasis"];
}

+ (NSString *)ignoreAndMarkAsShipped {
    return [NSString localizedStringWithKey:@"ignore_and_mark_as_shipped"];
}

+ (NSString *)autoAssign {
    return [NSString localizedStringWithKey:@"auto_assign"];
}

+ (NSString *)emailTo {
    return [NSString localizedStringWithKey:@"email_to"];
}

+ (NSString *)insufficientFunds {
    return [NSString localizedStringWithKey:@"insufficient_funds"];
}

+ (NSString *)shipOrderInsufficientFundsMessage {
    return [NSString localizedStringWithKey:@"ship_order_insufficient_funds_message"];
}

+ (NSString *)shipOrderErrorObtainingRates {
    return [NSString localizedStringWithKey:@"ship_order_error_obtaining_rates"];
}

+ (NSString *)shipOrderErrorShipping {
    return [NSString localizedStringWithKey:@"ship_order_error_shipping"];
}

+ (NSString *)returnStr {
    return [NSString localizedStringWithKey:@"return"];
}

+ (NSString *)shipment {
    return [NSString localizedStringWithKey:@"shipment"];
}

+ (NSString *)errorUpdatingOrders {
    return [NSString localizedStringWithKey:@"error_updating_orders"];
}

+ (NSString *)errorFailedToRefreshPrinters {
    return [NSString localizedStringWithKey:@"error_failed_to_refresh_printers"];
}

+ (NSString *)errorReturningShipment {
    return [NSString localizedStringWithKey:@"error_returning_shipment"];
}

+ (NSString *)fulfillmentSuccessfullySubmitted {
    return [NSString localizedStringWithKey:@"fulfillment_successfully_submitted"];
}

+ (NSString *)problemSavingThis {
    return [NSString localizedStringWithKey:@"problem_saving_this"];
}

+ (NSString *)returnHasBeenCreatedTitle {
    return [NSString localizedStringWithKey:@"return_has_been_created_title"];
}

+ (NSString *)returnHasBeenCreatedMessage {
    return [NSString localizedStringWithKey:@"return_has_been_created_message"];
}

+ (NSString *)rmaNumberShort {
    return [NSString localizedStringWithKey:@"rma_number_short"];
}

+ (NSString *)returningParty {
    return [NSString localizedStringWithKey:@"returning_party"];
}

+ (NSString *)returningTo {
    return [NSString localizedStringWithKey:@"returning_to"];
}

+ (NSString *)shippingMethod {
    return [NSString localizedStringWithKey:@"shipping_method"];
}

+ (NSString *)returnPrintTitle {
    return [NSString localizedStringWithKey:@"return_print_title"];
}

+ (NSString *)returnPrintMessage {
    return [NSString localizedStringWithKey:@"return_print_message"];
}

+ (NSString *)returnModeRmaMessage {
    return [NSString localizedStringWithKey:@"return_mode_rma_message"];
}

+ (NSString *)shipOrderFeesMessage {
    return [NSString localizedStringWithKey:@"ship_order_fees_message"];
}

+ (NSString *)updatingNotes {
    return [NSString localizedStringWithKey:@"updating_notes"];
}

+ (NSString *)successfullyUpdatedNotes {
    return [NSString localizedStringWithKey:@"successfully_updated_notes"];
}

+ (NSString *)errorOccurredWhileSavingNotes {
    return [NSString localizedStringWithKey:@"error_occurred_while_saving_notes"];
}

+ (NSString *)itemOptions {
    return [NSString localizedStringWithKey:@"item_options"];
}

+ (NSString *)modifyAddress {
    return [NSString localizedStringWithKey:@"modify_address"];
}

+ (NSString *)saveChanges {
    return [NSString localizedStringWithKey:@"save_changes"];
}

+ (NSString *)email {
    return [NSString localizedStringWithKey:@"email"];
}

+ (NSString *)phone {
    return [NSString localizedStringWithKey:@"phone"];
}

+ (NSString *)recipientName {
    return [NSString localizedStringWithKey:@"recipient_name"];
}

+ (NSString *)companyName {
    return [NSString localizedStringWithKey:@"company_name"];
}

+ (NSString *)address {
    return [NSString localizedStringWithKey:@"address"];
}

+ (NSString *)addressVerifiedPlural {
    return [NSString localizedStringWithKey:@"address_verified_plural"];
}

+ (NSString *)addressVerifiedErrorPlural {
    return [NSString localizedStringWithKey:@"address_verified_error_plural"];
}

+ (NSString *)addressVerifiedSingular {
    return [NSString localizedStringWithKey:@"address_verified_singular"];
}

+ (NSString *)addressVerifiedErrorSingular {
    return [NSString localizedStringWithKey:@"address_verified_error_plural"];
}

+ (NSString *)postalCode {
    return [NSString localizedStringWithKey:@"postal_code"];
}

+ (NSString *)stateRegion {
    return [NSString localizedStringWithKey:@"state_region"];
}

+ (NSString *)errorOccurredWhileSavingOrder {
    return [NSString localizedStringWithKey:@"error_occurred_while_saving_order"];
}

#pragma mark Printing
+ (NSString *)printingPrintWith {
    return [NSString localizedStringWithKey:@"printing_print_with"].tripleDots;
}

+ (NSString *)printingShippingLabel {
    return [NSString localizedStringWithKey:@"printing_shipping_label"];
}

+ (NSString *)printingLabel {
    return [NSString localizedStringWithKey:@"printing_label"];
}

+ (NSString *)printingPackingSlip {
    return [NSString localizedStringWithKey:@"printing_packing_slip"];
}

+ (NSString *)printingEndOfDay {
    return [NSString localizedStringWithKey:@"printing_end_of_day"];
}

+ (NSString *)printingOrderSummary {
    return [NSString localizedStringWithKey:@"printing_order_summary"];
}

+ (NSString *)printingPickList {
    return [NSString localizedStringWithKey:@"printing_pick_list"];
}

+ (NSString *)printingReturnLabel {
    return [NSString localizedStringWithKey:@"printing_return_label"];
}

+ (NSString *)printingPreview {
    return [NSString localizedStringWithKey:@"printing_preview"];
}

+ (NSString *)printingConnect {
    return [NSString localizedStringWithKey:@"printing_connect"];
}

+ (NSString *)printingEmail {
    return [NSString localizedStringWithKey:@"printing_email"];
}

+ (NSString *)printingErrorMailNotSetup {
    return [NSString localizedStringWithKey:@"printing_error_mail_not_setup"];
}

+ (NSString *)printingLoadingDocument {
    return [NSString localizedStringWithKey:@"printing_loading_document"];
}

+ (NSString *)printingStartedPrintJob {
    return [NSString localizedStringWithKey:@"printing_started_print_job"];
}

+ (NSString *)printingUnableToStartPrintJob {
    return [NSString localizedStringWithKey:@"printing_unable_to_start_print_job"];
}

+ (NSString *)printingFailedToLoadDocument {
    return [NSString localizedStringWithKey:@"printing_failed_to_load_document"];
}

+ (NSString *)printingOrdersEmailSubjectPlural {
    return [NSString localizedStringWithKey:@"printing_orders_email_subject_plural"];
}

+ (NSString *)printingOrdersEmailSubjectSingular {
    return [NSString localizedStringWithKey:@"printing_orders_email_subject_singular"];
}

+ (NSString *)printingSavedEmail {
    return [NSString localizedStringWithKey:@"printing_saved_email"];
}

+ (NSString *)printingSentEmail {
    return [NSString localizedStringWithKey:@"printing_sent_email"];
}

+ (NSString *)printingFailedEmail {
    return [NSString localizedStringWithKey:@"printing_failed_email"];
}

+ (NSString *)printingPreviewOpen {
    return [NSString localizedStringWithKey:@"printing_preview_open"];
}

+ (NSString *)printingPreviewOpenWith {
    return [NSString localizedStringWithKey:@"printing_preview_open_with"].tripleDots;
}

+ (NSString *)printingViewForScanning {
    return [NSString localizedStringWithKey:@"printing_view_for_scanning"];
}

+ (NSString *)printingPrint {
    return [NSString localizedStringWithKey:@"printing_print"];
}

+ (NSString *)printingRefreshPrinters {
    return [NSString localizedStringWithKey:@"refresh_printers"];
}

#pragma mark Shipments/Returns
+ (NSString *)shipmentsOutstanding {
    return [NSString localizedStringWithKey:@"shipments_outstanding"];
}

+ (NSString *)shipmentsRecentShipments {
    return [NSString localizedStringWithKey:@"shipments_recent_shipments"];
}

+ (NSString *)shipmentsReceived {
    return [NSString localizedStringWithKey:@"shipments_received"];
}

+ (NSString *)shipmentsVoided {
    return [NSString localizedStringWithKey:@"shipments_voided"];
}

+ (NSString *)shipmentsVoidLabel {
    return [NSString localizedStringWithKey:@"shipments_void_label"];
}

+ (NSString *)shipmentsVoidShipment {
    return [NSString localizedStringWithKey:@"shipments_void_shipment"];
}

+ (NSString *)shipmentsVoidShipmentMessage {
    return [NSString localizedStringWithKey:@"shipments_void_shipment_message"];
}

+ (NSString *)shipmentsInTransit {
    return [NSString localizedStringWithKey:@"shipments_in_transit"];
}

+ (NSString *)shipmentsDelivered {
    return [NSString localizedStringWithKey:@"shipments_delivered"];
}

+ (NSString *)shipmentsDeliveryException {
    return [NSString localizedStringWithKey:@"shipments_delivery_exception"];
}

+ (NSString *)shipmentStatusUnknown {
    return [NSString localizedStringWithKey:@"shipments_status_unknown"];
}

+ (NSString *)trackingEvents {
    return [NSString localizedStringWithKey:@"tracking_events"];
}

+ (NSString *)trackOnCarrierSite {
    return [NSString localizedStringWithKey:@"track_on_carrier_site"];
}

+ (NSString *)trackOnSite {
    return [NSString localizedStringWithKey:@"track_on_site"];
}

+ (NSString *)trackingURLNotFound {
    return [NSString localizedStringWithKey:@"tracking_url_not_found"];
}

+ (NSString *)trackingNumberNoRecordsFound {
    return [NSString localizedStringWithKey:@"tracking_number_no_records_found"];
}

+ (NSString *)errorOccurredWhileLoading {
    return [NSString localizedStringWithKey:@"error_occurred_while_loading"];
}

+ (NSString *)errorOccurredWhileSearching {
    return [NSString localizedStringWithKey:@"error_occurred_while_searching"];
}

#pragma mark Shipment/Return Details
+ (NSString *)shipmentDetails {
    return [NSString localizedStringWithKey:@"shipment_details"];
}

+ (NSString *)shipmentReturnDetails {
    return [NSString localizedStringWithKey:@"shipment_return_details"];
}

+ (NSString *)shipmentDetailsOrderOrStoreDeactived {
    return [NSString localizedStringWithKey:@"shipment_details_order_or_store_deactivated"];
}

+ (NSString *)shipmentDetailsOrderOrStoreDeactivedMessage {
    return [NSString localizedStringWithKey:@"shipment_details_order_or_store_deactivated_message"];
}

+ (NSString *)shipmentDetailsResendReturnLabel {
    return [NSString localizedStringWithKey:@"shipment_details_resend_return_label"];
}

+ (NSString *)shipmentDetailsResendReturnLabelMessage {
    return [NSString localizedStringWithKey:@"shipment_details_resend_return_label_message"];
}

+ (NSString *)shipmentDetailsFailedToResendReturnLabel {
    return [NSString localizedStringWithKey:@"shipment_details_failed_to_resend_return_label"];
}

+ (NSString *)shipmentDetailsReturnLabelSentSuccessfully {
    return [NSString localizedStringWithKey:@"shipment_details_return_label_sent_successfully"];
}

+ (NSString *)shipmentDetailsMarkReturn {
    return [NSString localizedStringWithKey:@"shipment_details_mark_return"];
}

+ (NSString *)shipmentDetailsReceivedOn {
    return [NSString localizedStringWithKey:@"shipment_details_received_on"];
}

+ (NSString *)shipmentDetailsFailedtoMarkReturnAsReceived {
    return [NSString localizedStringWithKey:@"shipment_details_failed_to_mark_return_as_received"];
}

+ (NSString *)shipmentDetailsLabelAndDocuments {
    return [NSString localizedStringWithKey:@"shipment_details_label_and_documents"];
}

+ (NSString *)shipmentDetailsProcessingStatus {
    return [NSString localizedStringWithKey:@"shipment_details_processing_status"];
}

+ (NSString *)shipmentDetailsReturnTo {
    return [NSString localizedStringWithKey:@"shipment_details_return_to"];
}

+ (NSString *)shipmentDetailsResentEmail {
    return [NSString localizedStringWithKey:@"shipment_details_resent_email"];
}

+ (NSString *)shipmentDetailsFailedToResendEmail {
    return [NSString localizedStringWithKey:@"shipment_details_failed_to_resend_email"];
}

+ (NSString *)shipmentDetailsReprocessedShipment {
    return [NSString localizedStringWithKey:@"shipment_details_reprocessed_shipment"];
}

+ (NSString *)shipmentDetailsFailedToNotifyMarketplace {
    return [NSString localizedStringWithKey:@"shipment_details_failed_to_notify_marketplace"];
}

+ (NSString *)shipmentDetailsMarketplaceNotified {
    return [NSString localizedStringWithKey:@"shipment_details_marketplace_notified"];
}

+ (NSString *)shipmentDetailsMarketplaceNotificationNotProcessed {
    return [NSString localizedStringWithKey:@"shipment_details_marketplace_notification_not_processed"];
}

+ (NSString *)shipmentDetailsFailedToNotifyCustomer {
    return [NSString localizedStringWithKey:@"shipment_details_failed_to_notify_customer"];
}

+ (NSString *)shipmentDetailsCustomerNotified {
    return [NSString localizedStringWithKey:@"shipment_details_customer_notified"];
}

+ (NSString *)shipmentDetailsCustomerNotificationNotProcessed {
    return [NSString localizedStringWithKey:@"shipment_details_customer_notification_not_processed"];
}

+ (NSString *)shipmentDetailsReprocessShipment {
    return [NSString localizedStringWithKey:@"shipment_details_reprocess_shipment"];
}

+ (NSString *)shipmentDetailsResendConfirmationEmail {
    return [NSString localizedStringWithKey:@"shipment_details_resend_confirmation_email"];
}

#pragma mark Fulfillments

+ (NSString *)shipmentsRecentFulfillments {
    return [NSString localizedStringWithKey:@"shipments_recent_fulfillments"];
}

+ (NSString *)shipmentsPending {
    return [NSString localizedStringWithKey:@"shipments_pending"];
}

#pragma mark Fulfillment Details
+ (NSString *)fulfillmentDetails {
    return [NSString localizedStringWithKey:@"fulfillment_details"];
}

#pragma mark End of Day
+ (NSString *)endOfDayNoOpenShipments {
    return [NSString localizedStringWithKey:@"end_of_day_no_open_shipments"];
}

+ (NSString *)endOfDayNoOpenOrClosedShipments {
    return [NSString localizedStringWithKey:@"end_of_day_no_open_or_closed_shipments"];
}

+ (NSString *)endOfDayNoClosedShipments {
    return [NSString localizedStringWithKey:@"end_of_day_no_closed_shipments"];
}

+ (NSString *)endOfDayCloseCarrierShipmentsPlural:(unsigned long)numShipments carrier:(NSString *)carrier {
    NSString *format = [NSString localizedStringWithKey:@"end_of_day_close_carrier_shipments_plural"];
    return [NSString stringWithFormat:format, numShipments, carrier];
}

+ (NSString *)endOfDayCloseCarrierShipmentsSingularWithCarrier:(NSString *)carrier {
    NSString *format = [NSString localizedStringWithKey:@"end_of_day_close_carrier_shipments_singular"];
    return [NSString stringWithFormat:format, carrier];
}

+ (NSString *)endOfDayPrintEndOfDayForm {
    return [NSString localizedStringWithKey:@"end_of_day_print_end_of_day_form"];
}

+ (NSString *)endOfDayPrintForShipmentsPlural:(unsigned long)numShipments {
    return [NSString localizedStringWithKey:@"end_of_day_print_for_shipments_plural" intValue:numShipments];
}

+ (NSString *)endOfDayPrintForShipmentsSingular {
    return [NSString localizedStringWithKey:@"end_of_day_print_for_shipments_singular"];
}

+ (NSString *)endOfDayFailedToCloseShipmentsPlural {
    return [NSString localizedStringWithKey:@"end_of_day_failed_to_close_shipments_plural"];
}

+ (NSString *)endOfDayFailedToCloseShipmentsSingular {
    return [NSString localizedStringWithKey:@"end_of_day_failed_to_close_shipments_singular"];
}

+ (NSString *)endOfDayFailedToGetOpenOrderSummary {
    return [NSString localizedStringWithKey:@"end_of_day_failed_to_get_open_order_summary"];
}

+ (NSString *)endOfDayFailedToGetClosedShipments {
    return [NSString localizedStringWithKey:@"end_of_day_failed_to_get_closed_shipments"];
}

+ (NSString *)endOfDayClosedShipments {
    return [NSString localizedStringWithKey:@"end_of_day_closed_shipments"];
}

+ (NSString *)endOfDayBarcodeValue {
    return [NSString localizedStringWithKey:@"end_of_day_barcode_value"];
}

+ (NSString *)endOfDayErrorsEncounteredWhenClosingShipments {
    return [NSString localizedStringWithKey:@"end_of_day_errors_encountered_when_closing_shipments"];
}

#pragma mark Rate Calculator
+ (NSString *)rateCalculatorNoCarriers {
    return [NSString localizedStringWithKey:@"rate_calculator_no_carriers"];
}

+ (NSString *)rateCalculatorNotSupported {
    return [NSString localizedStringWithKey:@"rate_calculator_not_supported"];
}

#pragma mark Settings
+ (NSString *)settingsNoPermissions {
    return [NSString localizedStringWithKey:@"settings_no_permissions"];
}

+ (NSString *)settingsMobileSettings {
    return [NSString localizedStringWithKey:@"settings_mobile_settings"];
}

+ (NSString *)settingsNotifications {
    return [NSString localizedStringWithKey:@"settings_notifications"];
}

+ (NSString *)settingsOrderList {
    return [NSString localizedStringWithKey:@"settings_order_list"];
}

+ (NSString *)settingsPrintMethods {
    return [NSString localizedStringWithKey:@"settings_print_methods"];
}

+ (NSString *)settingsEndOfDayForms {
    return [NSString localizedStringWithKey:@"settings_end_of_day_forms"];
}

+ (NSString *)settingsNotificationsForNewOrders {
    return [NSString localizedStringWithKey:@"settings_notifications_for_new_orders"];
}

+ (NSString *)settingsItemSku {
    return [NSString localizedStringWithKey:@"settings_item_sku"];
}

+ (NSString *)settingsItemName {
    return [NSString localizedStringWithKey:@"settings_item_name"];
}

+ (NSString *)settingsOrderAge {
    return [NSString localizedStringWithKey:@"settings_order_age"];
}

+ (NSString *)settingsOrderDate {
    return [NSString localizedStringWithKey:@"settings_order_date"];
}

+ (NSString *)settingsBarcode {
    return [NSString localizedStringWithKey:@"settings_barcode"];
}

#pragma mark Miscellaneous
+ (NSString *)pick {
    return [NSString localizedStringWithKey:@"pick"];
}

+ (NSString *)tapToChoose {
    return [NSString localizedStringWithKey:@"tap_to_choose"];
}

+ (NSString *)pickAnOption {
    return [NSString localizedStringWithKey:@"pick_an_option"];
}

+ (NSString *)assignedUserToOrdersPlural {
    return [NSString localizedStringWithKey:@"assigned_user_to_orders_plural"];
}

+ (NSString *)assignedUserToOrdersSingular {
    return [NSString localizedStringWithKey:@"assigned_user_to_orders_singular"];
}

+ (NSString *)failedToAssignUser {
    return [NSString localizedStringWithKey:@"failed_to_assign_user"];
}

+ (NSString *)copiedToClipboard {
    return [NSString localizedStringWithKey:@"copied_to_clipboard"];
}

+ (NSString *)failedToRefreshStore {
    return [NSString localizedStringWithKey:@"failed_to_refresh_store"];
}

+ (NSString *)loginErrorCode511 {
    return [NSString localizedStringWithKey:@"login_error_code_511"];
}

+ (NSString *)loginErrorCode512 {
    return [NSString localizedStringWithKey:@"login_error_code_512"];
}

+ (NSString *)errorLoggingIn {
    return [NSString localizedStringWithKey:@"error_logging_in"];
}

+ (NSString *)deviceFailedToRegister {
    return [NSString localizedStringWithKey:@"device_failed_to_register"];
}

+ (NSString *)overview {
    return [NSString localizedStringWithKey:@"overview"];
}

+ (NSString *)operations {
    return [NSString localizedStringWithKey:@"operations"];
}

+ (NSString *)sales {
    return [NSString localizedStringWithKey:@"sales"];
}

+ (NSString *)customRange {
    return [NSString localizedStringWithKey:@"custom_range"];
}

+ (NSString *)dropIn {
    return [NSString localizedStringWithKey:@"drop_in"];
}

+ (NSString *)newDropIn {
    return [NSString localizedStringWithKey:@"new_drop_in"];
}

+ (NSString *)failedToDropIn {
    return [NSString localizedStringWithKey:@"failed_to_drop_in"];
}

+ (NSString *)stopDropIn {
    return [NSString localizedStringWithKey:@"stop_drop_in"];
}

+ (NSString *)failedToStopDropIn {
    return [NSString localizedStringWithKey:@"failed_to_stop_drop_in"];
}

+ (NSString *)markAsReceived {
    return [NSString localizedStringWithKey:@"mark_as_received"];
}

+ (NSString *)resendLabel {
    return [NSString localizedStringWithKey:@"resend_label"];
}

+ (NSString *)revenue {
    return [NSString localizedStringWithKey:@"revenue"];
}

+ (NSString *)numberItemsSold {
    return [NSString localizedStringWithKey:@"number_items_sold"];
}

+ (NSString *)shipmentStatus {
    return [NSString localizedStringWithKey:@"shipment_status"];
}

+ (NSString *)shipmentStatusMessage {
    return [NSString localizedStringWithKey:@"shipment_status_message"];
}

+ (NSString *)fulfillmentStatus {
    return [NSString localizedStringWithKey:@"fulfillment_status"];
}

+ (NSString *)fulfillmentStatusMessage {
    return [NSString localizedStringWithKey:@"fulfillment_status_message"];
}

+ (NSString *)createLabel {
    return [NSString localizedStringWithKey:@"create_label"];
}

+ (NSString *)returnCreatedTitle {
    return [NSString localizedStringWithKey:@"return_created_title"];
}

+ (NSString *)returnCreatedMessage {
    return [NSString localizedStringWithKey:@"return_created_message"];
}

+ (NSString *)pasteAddress {
    return [NSString localizedStringWithKey:@"paste_address"];
}

+ (NSString *)success {
    return [NSString localizedStringWithKey:@"success"];
}

+ (NSString *)residentialAddressVerified {
    return [NSString localizedStringWithKey:@"residential_address_verified"];
}

+ (NSString *)commercialAddressVerified {
    return [NSString localizedStringWithKey:@"commercial_address_verified"];
}

+ (NSString *)internationalAddressVerified {
    return [NSString localizedStringWithKey:@"international_address_verified"];
}

+ (NSString *)addressHasNotBeenVerified {
    return [NSString localizedStringWithKey:@"address_has_not_been_verified"];
}

+ (NSString *)nonUSAddressesCannotBeVerified {
    return [NSString localizedStringWithKey:@"non_us_addresses_cannot_be_verified"];
}

+ (NSString *)shipsuranceDiscountInsurance {
    return [NSString localizedStringWithKey:@"shipsurance_discount_insurance"];
}

+ (NSString *)carrierInsurance {
    return [NSString localizedStringWithKey:@"carrier_insurance"];
}

+ (NSString *)otherExternalInsurance {
    return [NSString localizedStringWithKey:@"other_external_insurance"];
}

#pragma mark Submit Feedback - React Native
+ (NSString *)submitFeedback {
    return [NSString localizedStringWithKey:@"submit_feedback"];
}

+ (NSString *)submitFeedbackMessage {
    return [NSString localizedStringWithKey:@"submit_feedback_message"];
}

+ (NSString *)submitFeedbackSubmitted {
    return [NSString localizedStringWithKey:@"submit_feedback_submitted"];
}

+ (NSString *)submitFeedbackError {
    return [NSString localizedStringWithKey:@"submit_feedback_error"];
}

+ (NSString *)submitFeedbackEnterValidText {
    return [NSString localizedStringWithKey:@"submit_feedback_enter_valid_text"];
}

+ (NSString *)biometricDisabled {
    return [NSString localizedStringWithKey:@"biometric_disabled"];
}

+ (NSString *)enable {
    return [NSString localizedStringWithKey:@"enable"];
}

+ (NSString *)faceID {
    return [NSString localizedStringWithKey:@"face_id"];
}

+ (NSString *)touchID {
    return [NSString localizedStringWithKey:@"touch_id"];
}

+ (NSString *)signInAs {
    return [NSString localizedStringWithKey:@"sign_in_as"];
}

+ (NSString *)viewHistory {
    return [NSString localizedStringWithKey:@"view_history"];
}

#pragma mark Colors

+ (UIColor *)submitFeedbackColor {
    return HEXCOLOR(0x4791CFFF);
}

+ (UIColor *)submitFeedbackColorPressed {
    return HEXCOLOR(0x4791CF80);
}

+ (UIColor *)tappableIconBlueColor {
    return HEXCOLOR(0x216B9AFF);
}

+ (UIColor *)filterPopTextColor {
    return HEXCOLOR(0x6D6D6DFF);
}

+ (UIColor *)xButtonColor {
    return HEXCOLOR(0x999999FF);
}

+ (UIColor *)connectCancelColor {
    return HEXCOLOR(0x009688FF);
}

+ (UIColor *)platinumColor {
    return HEXCOLOR(0xD7D7D7FF);
}

+ (UIColor *)lightPlatinumColor {
    return HEXCOLOR(0xE0E0E0FF);
}

+ (UIColor *)printGreenColorNormal {
    return HEXCOLOR(0x82B654FF);
}

+ (UIColor *)printGreenColorHighlighted {
    return HEXCOLOR(0x82B65480);
}

+ (UIColor *)filterGrayColor {
    return [SSNConstants addLineItemNormalColor];
}

+ (UIColor *)offWhiteColor {
    return HEXCOLOR(0xF7F7F7FF);
}

+ (UIColor *)offWhite2Color {
    return HEXCOLOR(0xF8F8F8FF);
}

+ (UIColor *)boulderColor {
    return HEXCOLOR(0x797979FF);
}

+ (UIColor *)impersonationNavColor {
    return HEXCOLOR(0xFF8027FF);
}

+ (UIColor *)refreshHighlightedColor {
    return HEXCOLOR(0xE6E6E6FF);
}

+ (UIColor *)textMutedColor {
    return HEXCOLOR(0xA9A9A9FF);
}

+ (UIColor *)aluminumColor {
    return HEXCOLOR(0x9A9A9AFF);
}

+ (UIColor *)textPrimaryColor {
    return HEXCOLOR(0x2D80A9FF);
}

+ (UIColor *)textErrorColor {
    return HEXCOLOR(0xDC3816FF);
}

+ (UIColor *)textWarningColor {
    return HEXCOLOR(0xFF933FFF);
}

+ (UIColor *)primaryTextLightColor {
    return HEXCOLOR(0x000000FF);
}

+ (UIColor *)textSuccessColor {
    return HEXCOLOR(0x7DA771FF);
}

+ (UIColor *)orderDetailButtonPrimaryColor {
    return HEXCOLOR(0x4791CEFF);
}

+ (UIColor *)secondaryButtonColor {
    return HEXCOLOR(0xD1D1D1FF);
}

+ (UIColor *)buttonBorderColor {
    return HEXCOLOR(0xD8D8D8FF);
}

+ (UIColor *)placeholderColor {
    return HEXCOLOR(0xA2ACB1FF);
}

+ (UIColor *)tableViewBackgroundMessageColor {
    return HEXCOLOR(0x788287FF);
}

+ (UIColor *)backgroundBeige {
    return HEXCOLOR(0xEEEEEEFF);
}

+ (UIColor *)disabledGrayButtonColor {
    return HEXCOLOR(0xD3D3D3FF);
}

+ (UIColor *)activeGreenButtonColor {
    return HEXCOLOR(0x81B64FFF);
}

+ (UIColor *)activeGreenButtonColorPressed {
    return HEXCOLOR(0x76A747FF);
}

+ (UIColor *)appBlueColor {
    return HEXCOLOR(0x4791CEFF);
}

+ (UIColor *)appBlueColorSemiClear {
    return HEXCOLOR(0x4791CE80);
}

+ (UIColor *)sectionHeaderColor {
    return HEXCOLOR(0x909090FF);
}

+ (UIColor *)tappableSectionHeaderColor {
    return HEXCOLOR(0x6D6D72FF);
}

+ (UIColor *)cellTitleColor {
    return HEXCOLOR(0x262626FF);
}

+ (UIColor *)blueGrayColor {
    return HEXCOLOR(0xF4F8FBFF);
}

+ (UIColor *)keyboardBarColor {
    return HEXCOLOR(0xF9F9F9FF);
}

+ (UIColor *)darkGray3Color {
    return HEXCOLOR(0xA4A4A4FF);
}

+ (UIColor *)darkGray2Color {
    return HEXCOLOR(0x666666FF);
}

+ (UIColor *)darkGrayColor {
    return HEXCOLOR(0x757575FF);
}

+ (UIColor *)darkDarkGrayColor {
    return HEXCOLOR(0x6B6B6BFF);
}

+ (UIColor *)insightsGreenColor {
    return HEXCOLOR(0x6A9A5CFF);
}

+ (UIColor *)currencyGreenColor {
    return HEXCOLOR(0x6BA03AFF);
}

+ (UIColor *)insightsGreenLightColor {
    return HEXCOLOR(0x6A9A5C80);
}

+ (UIColor *)selectionCircleGray {
    return HEXCOLOR(0xC3C3C3FF);
}

+ (CGFloat)badgeCornerRadius {
    return 4.0f;
}

+ (UIColor *)chartDarkBlueColor {
    return HEXCOLOR(0x0068A0FF);
}

+ (UIColor *)chartLightBlueColor {
    return HEXCOLOR(0x80B3CFFF);
}

+ (UIColor *)chartLightLightGrayColor {
    return HEXCOLOR(0xECECECFF);
}

+ (NSArray *)ageChartColors {
    return @[HEXCOLOR(0xB55142FF), HEXCOLOR(0xC57864FF),
             HEXCOLOR(0xCCB07AFF), HEXCOLOR(0xAAB17BFF), HEXCOLOR(0x9FCD8EFF)];
}

+ (UIColor *)ageChartEmptyColor {
    return HEXCOLOR(0xDDDDDDFF);
}

+ (UIColor *)ageChartLabelColor {
    return HEXCOLOR(0x777777FF);
}

+ (UIColor *)chartGrayColor {
    return [SSNConstants ageChartLabelColor];
}

+ (UIColor *)chartDarkGrayColor {
    return HEXCOLOR(0xCDCCCDFF);
}

+ (NSArray *)carrierChartColors {
    return @[HEXCOLOR(0x5E82A9FF), HEXCOLOR(0xEAA848FF), HEXCOLOR(0x4D148CFF),
             HEXCOLOR(0xFFCC00FF), HEXCOLOR(0x6A9A5CFF), HEXCOLOR(0xCB011DFF),
             HEXCOLOR(0x205A66FF), HEXCOLOR(0xDA2A1DFF)];
}

+ (UIColor *)topNavColor {
    return HEXCOLOR(0x1E282DFF);
}

+ (UIColor *)sideNavGreenColor {
    return HEXCOLOR(0x5E686DFF);
}

+ (UIColor *)sideNavGrayColor {
    return HEXCOLOR(0x3C464BFF);
}

+ (UIColor *)sideNavTextColor {
    return HEXCOLOR(0xEEEFF0FF);
}

+ (UIColor *)sideNavSeparatorColor {
    return HEXCOLOR(0x3C464BFF);
}

+ (UIColor *)sideNavSelectedColor {
    return HEXCOLOR(0x88949AFF);
}

+ (UIColor *)deselectedEODButtonColor {
    return HEXCOLOR(0x1682B7FF);
}

+ (UIColor *)learnMoreTextColor {
    return HEXCOLOR(0x7CB2D1FF);
}

+ (UIColor *)loginHUDBackgroundColor {
    return HEXCOLOR(0xFFFFFFF9);
}

+ (UIColor *)loginWhiteColor {
    return HEXCOLOR(0xF0F0F0FF);
}

+ (UIColor *)addLineItemNormalColor {
    return HEXCOLOR(0xFFFFFFFA);
}

+ (UIColor *)addLineItemHighlightedColor {
    return HEXCOLOR(0xFFFFFF80);
}

+ (UIColor *)autoCompleteBackGroundColor {
    return HEXCOLOR(0xFFFFFFF5);
}

+ (UIColor *)ageGreen {
    return HEXCOLOR(0x0FBB00FF);
}

+ (UIColor *)ageBrown {
    return HEXCOLOR(0xA44600FF);
}

+ (UIColor *)ageRed {
    return HEXCOLOR(0xFF0000FF);
}

+ (UIColor *)actionSheetRed {
    return HEXCOLOR(0xDE0000FF);
}

+ (UIColor *)separatorLightGray {
    return HEXCOLOR(0xC8C7CC80);
}

+ (UIColor *)sortFilterButtonTextColor {
    return [SSNConstants lightBlueColor];
}

+ (UIColor *)lightBlueColor {
    return HEXCOLOR(0x468FCFFF);
}

+ (UIColor *)borderGray {
    return HEXCOLOR(0xBBC5CAFF);
}

+ (UIColor *)dateRangeBlue {
    return HEXCOLOR(0x1C64A3FF);
}

@end
