.class public Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public businessVersion:[I

.field public hardwarePlatform:I

.field public type:I

.field public updateVersion:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->businessVersion:[I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->updateVersion:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
