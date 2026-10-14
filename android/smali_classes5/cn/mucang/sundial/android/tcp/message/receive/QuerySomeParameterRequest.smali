.class public Lcn/mucang/sundial/android/tcp/message/receive/QuerySomeParameterRequest;
.super Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;


# instance fields
.field private parameterIdList:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const v0, 0x8106

    return v0
.end method

.method public getParameterIdList()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/QuerySomeParameterRequest;->parameterIdList:[J

    return-object v0
.end method

.method public init([B)V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    .line 3
    new-array v1, p1, [J

    iput-object v1, p0, Lcn/mucang/sundial/android/tcp/message/receive/QuerySomeParameterRequest;->parameterIdList:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 4
    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/message/receive/QuerySomeParameterRequest;->parameterIdList:[J

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readDWORD()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
