.class public Lcn/mucang/sundial/android/tcp/message/send/LocationReportRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/SendMessage;
.implements Lcn/mucang/sundial/android/tcp/PacketResultConcern;


# instance fields
.field private gnssByteData:[B

.field private gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/send/LocationReportRequest;->gnssByteData:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/send/LocationReportRequest;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->encode()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x200

    return v0
.end method

.method public setGnssData(Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/send/LocationReportRequest;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    return-void
.end method

.method public setGnssData([B)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/send/LocationReportRequest;->gnssByteData:[B

    return-void
.end method
