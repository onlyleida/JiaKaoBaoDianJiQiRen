.class public Lcn/mucang/android/core/api/verify/SmsCheckInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private restSeconds:I

.field private smsId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/core/api/verify/SmsCheckInfo;->restSeconds:I

    .line 4
    iput-object p2, p0, Lcn/mucang/android/core/api/verify/SmsCheckInfo;->smsId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRestSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/api/verify/SmsCheckInfo;->restSeconds:I

    return v0
.end method

.method public getSmsId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/SmsCheckInfo;->smsId:Ljava/lang/String;

    return-object v0
.end method

.method public setRestSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/api/verify/SmsCheckInfo;->restSeconds:I

    return-void
.end method

.method public setSmsId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/SmsCheckInfo;->smsId:Ljava/lang/String;

    return-void
.end method
