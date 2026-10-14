.class public Lcn/mucang/jiakaoyi/uilib/socket/model/CallModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field public final accessToken:Ljava/lang/String;

.field public final channelName:Ljava/lang/String;

.field public final voiceType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0xb3

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/CallModel;->accessToken:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/CallModel;->channelName:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/CallModel;->voiceType:I

    return-void
.end method
