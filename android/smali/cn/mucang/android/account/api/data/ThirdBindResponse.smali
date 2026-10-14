.class public Lcn/mucang/android/account/api/data/ThirdBindResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private thirdAccountId:I

.field private thirdParty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThirdAccountId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/account/api/data/ThirdBindResponse;->thirdAccountId:I

    return v0
.end method

.method public getThirdParty()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/ThirdBindResponse;->thirdParty:Ljava/lang/String;

    return-object v0
.end method

.method public setThirdAccountId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/account/api/data/ThirdBindResponse;->thirdAccountId:I

    return-void
.end method

.method public setThirdParty(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/ThirdBindResponse;->thirdParty:Ljava/lang/String;

    return-void
.end method
