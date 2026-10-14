.class public Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field public final algType:I

.field public final gearData:[B

.field public final id:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 1

    const/16 v0, 0x71

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;->id:I

    .line 3
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;->algType:I

    .line 4
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/GearSetModel;->gearData:[B

    return-void
.end method
