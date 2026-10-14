.class public Lcn/mucang/android/core/ui/page/PageAppConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private maxPageCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcn/mucang/android/core/ui/page/PageAppConfig;->maxPageCount:I

    return-void
.end method


# virtual methods
.method public getMaxPageCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/ui/page/PageAppConfig;->maxPageCount:I

    return v0
.end method

.method public setMaxPageCount(I)V
    .locals 1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const/4 p1, 0x3

    .line 1
    :cond_0
    iput p1, p0, Lcn/mucang/android/core/ui/page/PageAppConfig;->maxPageCount:I

    return-void
.end method
