.class public Lcn/mucang/jiakaoyi/uilib/socket/model/LogoutModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field public reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x41

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/LogoutModel;->reason:Ljava/lang/String;

    return-void
.end method
