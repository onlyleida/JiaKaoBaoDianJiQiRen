.class public Lcn/mucang/android/account/api/data/ForgotPasswordCheckResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private smsId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSmsId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/ForgotPasswordCheckResponse;->smsId:Ljava/lang/String;

    return-object v0
.end method

.method public setSmsId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/ForgotPasswordCheckResponse;->smsId:Ljava/lang/String;

    return-void
.end method
