.class public final Lcn/mucang/jiakaoyi/uilib/ui/widget/c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0002\u001a\u00020\u0003H\u0007J\u0008\u0010\u0017\u001a\u00020\u0016H\u0015J\u0008\u0010\u0018\u001a\u00020\u0016H\u0014J\u0010\u0010\u0019\u001a\u00020\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bR\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "gpsObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;",
        "gpsStationInfoModel",
        "loop",
        "",
        "netJob",
        "Lkotlinx/coroutines/Job;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;",
        "init",
        "",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "updateExamSiteName",
        "name",
        "",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;

.field private b:Z

.field private c:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;


# direct methods
.method public static final synthetic a(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;)Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/c;->c:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/c;->b:Z

    return p0
.end method

.method public static final synthetic c(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;)Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/c;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;

    return-object p0
.end method
