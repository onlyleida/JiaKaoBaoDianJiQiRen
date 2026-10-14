.class public Lcn/mucang/sundial/android/tcp/message/receive/ParameterSettingRequest;
.super Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;


# instance fields
.field private settingsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/Parameter;",
            ">;"
        }
    .end annotation
.end field


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

    const v0, 0x8103

    return v0
.end method

.method public getSettingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/Parameter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/ParameterSettingRequest;->settingsList:Ljava/util/List;

    return-object v0
.end method

.method public init([B)V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/mucang/sundial/android/tcp/message/receive/ParameterSettingRequest;->settingsList:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readDWORD()J

    move-result-wide v2

    .line 6
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v4

    .line 7
    invoke-virtual {v0, v4}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBytes(I)[B

    move-result-object v4

    .line 8
    invoke-static {v2, v3, v4}, Lcn/mucang/sundial/android/tcp/message/Parameter;->from(J[B)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcn/mucang/sundial/android/tcp/message/receive/ParameterSettingRequest;->settingsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
