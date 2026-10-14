.class public final Lcn/mucang/sundial/library/util/ClickController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/util/ClickController$ClickListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001\u0011B\u0013\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0008\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000cR\u0016\u0010\u000e\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/sundial/library/util/ClickController;",
        "",
        "Lcn/mucang/sundial/library/util/ClickController$ClickListener;",
        "listener",
        "Lkotlin/v;",
        "click",
        "(Lcn/mucang/sundial/library/util/ClickController$ClickListener;)V",
        "",
        "minClickCount",
        "I",
        "",
        "maxInternal",
        "J",
        "lastClickTime",
        "clickCount",
        "<init>",
        "(I)V",
        "ClickListener",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private clickCount:I

.field private lastClickTime:J

.field private maxInternal:J

.field private minClickCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 3
    iput-wide v0, p0, Lcn/mucang/sundial/library/util/ClickController;->maxInternal:J

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcn/mucang/sundial/library/util/ClickController;->minClickCount:I

    .line 5
    iput p1, p0, Lcn/mucang/sundial/library/util/ClickController;->minClickCount:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xa

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/util/ClickController;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final click(Lcn/mucang/sundial/library/util/ClickController$ClickListener;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/sundial/library/util/ClickController;->lastClickTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcn/mucang/sundial/library/util/ClickController;->maxInternal:J

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    .line 3
    iput v6, p0, Lcn/mucang/sundial/library/util/ClickController;->clickCount:I

    .line 4
    :cond_0
    iget v2, p0, Lcn/mucang/sundial/library/util/ClickController;->clickCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/mucang/sundial/library/util/ClickController;->clickCount:I

    .line 5
    iput-wide v0, p0, Lcn/mucang/sundial/library/util/ClickController;->lastClickTime:J

    .line 6
    iget v0, p0, Lcn/mucang/sundial/library/util/ClickController;->minClickCount:I

    if-lt v2, v0, :cond_2

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcn/mucang/sundial/library/util/ClickController$ClickListener;->onClickCountFull()V

    .line 8
    :cond_1
    iput v6, p0, Lcn/mucang/sundial/library/util/ClickController;->clickCount:I

    :cond_2
    return-void
.end method
