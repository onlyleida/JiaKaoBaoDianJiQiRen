.class public Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;
.super Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse$Result;
    }
.end annotation


# instance fields
.field private result:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse$Result;

.field private studentNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x7002

    return v0
.end method

.method public getResult()Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse$Result;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;->result:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse$Result;

    return-object v0
.end method

.method public getStudentNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;->studentNo:Ljava/lang/String;

    return-object v0
.end method

.method public init([B)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse$Result;->from(I)Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse$Result;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;->result:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse$Result;

    const/16 p1, 0x10

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;->studentNo:Ljava/lang/String;

    return-void
.end method
