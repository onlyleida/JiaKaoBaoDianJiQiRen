.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public coefficients:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;->coefficients:[I

    const/16 v1, 0x64

    .line 3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method
