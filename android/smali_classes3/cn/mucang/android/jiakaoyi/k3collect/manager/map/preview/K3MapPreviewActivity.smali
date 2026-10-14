.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapPreviewBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0014J\u0008\u0010\n\u001a\u00020\tH\u0014J\u0008\u0010\u000b\u001a\u00020\tH\u0014J\u0008\u0010\u000c\u001a\u00020\tH\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapPreviewBinding;",
        "()V",
        "mapLayerHelper",
        "Lcn/mucang/android/jiakaoyi/k3collect/transforms/MapLayerHelper;",
        "getStatName",
        "",
        "init",
        "",
        "onDestroy",
        "onPause",
        "onResume",
        "Companion",
        "MapCollectK3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$a;


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/k3collect/k0/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;->c:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;)Lcn/mucang/android/jiakaoyi/k3collect/k0/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;->b:Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    return-object p0
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;->k(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "K3MapPreview"

    return-object v0
.end method

.method protected init()V
    .locals 13

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapPreviewBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u5730\u56fe\u9884\u89c8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/ActivityK3MapPreviewBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/a;->a(Landroid/content/Intent;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;->b:Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    .line 6
    iget-object v3, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ne v2, v0, :cond_0

    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "\u7ebf\u8def\u4e3a\u7a7a"

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 10
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 11
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;

    const/4 v7, 0x0

    move-object v2, v10

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/c;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;->b:Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->mapView:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->b(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 3
    :goto_0
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->mapView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->mapView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->mapView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n()V

    return-void
.end method
