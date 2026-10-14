.class public Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field public final open:Z

.field public final seconds:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    const/16 v0, 0xb9

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;->open:Z

    .line 3
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/SwitchSafeModel;->seconds:I

    return-void
.end method
