//
// Receipt QuickLook Plugin.
// Copyright (c) 2013 Laurent Etiemble.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
#import "ReceiptHTMLWriter.h"
#import "Receipt.h"

@implementation ReceiptHTMLWriter

-(NSString *)formatForIndex:(NSUInteger)index {
    return NSLocalizedString(@"Item #%d", nil);
}

-(NSString *)formatForKey:(id)key {
    if ([key isKindOfClass:[NSNumber class]]) {
        int num = [key intValue];
        switch (num) {
            case ReceiptAttributeTypeBundleId:
                return NSLocalizedString(@"Bundle Identifier [%@]", nil);
            case ReceiptAttributeTypeBundleVersion:
                return NSLocalizedString(@"Bundle Version [%@]", nil);
            case ReceiptAttributeTypeExpirationDate:
                return NSLocalizedString(@"Expiration Date [%@]", nil);
            case ReceiptAttributeTypeHash:
                return NSLocalizedString(@"Receipt Hash [%@]", nil);
            case ReceiptAttributeTypeInAppPurchase:
                return NSLocalizedString(@"InApp Purchases [%@]", nil);
            case ReceiptAttributeTypeOpaqueValue:
                return NSLocalizedString(@"Opaque Value [%@]", nil);
            case ReceiptAttributeTypeOriginalApplicationVersion:
                return NSLocalizedString(@"Bundle Version (Original) [%@]", nil);
                
            case InAppAttributeTypeCancellationDate:
                return NSLocalizedString(@"Cancellation Date [%@]", nil);
            case InAppAttributeTypeOriginalPurchaseDate:
                return NSLocalizedString(@"Purchase Date (Original) [%@]", nil);
            case InAppAttributeTypeOriginalTransactionIdentifer:
                return NSLocalizedString(@"Product Identifier (Original) [%@]", nil);
            case InAppAttributeTypeProductIdentifer:
                return NSLocalizedString(@"Product Identifier [%@]", nil);
            case InAppAttributeTypePurchaseDate:
                return NSLocalizedString(@"Purchase Date [%@]", nil);
            case InAppAttributeTypeQuantity:
                return NSLocalizedString(@"Quantity [%@]", nil);
            case InAppAttributeTypeSubscriptionExpirationDate:
                return NSLocalizedString(@"Expiration Date [%@]", nil);
            case InAppAttributeTypeTransactionIdentifer:
                return NSLocalizedString(@"Transaction Identifier [%@]", nil);
            case InAppAttributeTypeWebOrderLineItemId:
                return NSLocalizedString(@"Web Order Line Item Identifier [%@]", nil);
                
            default:
                return NSLocalizedString(@"Unknown Attribute [%@]", nil);
        }
    }
    return [super formatForKey:key];
}

@end
