//
//  Handler.h
//  MultiplayerSnakeClient
//
//  Created by Apple on 5/19/16.
//  Copyright © 2016 Aloniki's Study. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataPacketProtocol.h"
#import "DisplayNetworkProcessUIDeleagte.h"
#import "JSONKit.h"

@interface Handler : NSObject{
    id<DisplayNetworkProcessUIDeleagte> delegate;
}
@property id<DisplayNetworkProcessUIDeleagte> delegate;

-(void)handle:(DataPacket*)packet;

-(void)prepared;
-(void)unprepared;

@end
