.class public Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;
.super Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;


# instance fields
.field private duration:J

.field private interval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;->duration:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    const v0, 0x8202

    return v0
.end method

.method public getInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;->interval:I

    return v0
.end method

.method public init([B)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;->interval:I

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readDWORD()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;->duration:J

    return-void
.end method
