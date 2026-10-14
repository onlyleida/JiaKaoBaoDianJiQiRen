.class public Lcn/mucang/sundial/android/tcp/message/send/LocationQueryResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/SendMessage;


# instance fields
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
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/send/LocationQueryResponse;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->encode()[B

    move-result-object v0

    return-object v0
.end method

.method public getGnssData()Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/send/LocationQueryResponse;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x201

    return v0
.end method

.method public setGnssData(Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/send/LocationQueryResponse;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    return-void
.end method
