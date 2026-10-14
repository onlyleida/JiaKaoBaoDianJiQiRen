.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 (2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0006\u0010\u001d\u001a\u00020\u000cH\u0002J\u0008\u0010\u001e\u001a\u00020\u000cH\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0014J\u0008\u0010!\u001a\u00020 H\u0014J\u0008\u0010\"\u001a\u00020 H\u0014J\u0008\u0010#\u001a\u00020 H\u0014J\u0010\u0010$\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0018\u0010%\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\'H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R6\u0010\n\u001a*\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000bj\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;",
        "()V",
        "examModeSettingModel",
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;",
        "getExamModeSettingModel",
        "()Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;",
        "examModeSettingModel$delegate",
        "Lkotlin/Lazy;",
        "layerMap",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/MapBaseLayer;",
        "Lkotlin/collections/HashMap;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "mapData",
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;",
        "onClickListener",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "renderModels",
        "Lcn/mucang/android/jiakaoyi/hpmap/render/ExamSiteRenderCallback;",
        "scaleHelper",
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;",
        "selectList",
        "createLayers",
        "key",
        "getStatName",
        "init",
        "",
        "onDestroy",
        "onPause",
        "onResume",
        "renderMap",
        "updateMap",
        "first",
        "",
        "Companion",
        "mapcollect_release"
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
.field public static final i:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity$a;


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field private final g:Lkotlin/f;

.field private h:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->i:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->e:Ljava/util/HashMap;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity$examModeSettingModel$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity$examModeSettingModel$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->g:Lkotlin/f;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method private final A(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 4
    invoke-direct {v0, v1, p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Landroidx/lifecycle/r;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    const-string v1, "it"

    if-eqz v0, :cond_0

    .line 7
    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->d:Ljava/util/List;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    if-eqz v0, :cond_1

    .line 11
    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 13
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->d:Ljava/util/List;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 14
    :cond_1
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/k;

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->d:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/k;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/k;->s:Ljava/util/List;

    const-string v2, "mapData.renders"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/c/a;

    .line 17
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->getLayerKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "renderModel.layerId   "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExamModelSettingActivity"

    invoke-static {v4, v3}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->e:Ljava/util/HashMap;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->getLayerKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "renderModel.layerKey"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 20
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->getLayerKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 21
    invoke-interface {v1, v5, v6, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->createMapLayers(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)Ljava/util/List;

    move-result-object v1

    const-string v2, "renderModel.createMapLay\u2026      false\n            )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 22
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    if-nez v2, :cond_7

    .line 23
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v1

    mul-int v0, v0, v1

    if-gtz v0, :cond_6

    .line 24
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_3

    .line 25
    :cond_6
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->C(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    :cond_7
    :goto_3
    const-string p1, "MapTag"

    const-string v0, " \u5730\u56fe\u52a0\u8f7d\u5b8c\u6210"

    .line 26
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mapData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->C(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    return-void
.end method

.method private static final C(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getMapBound()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->l()D

    move-result-wide v1

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getMapBound()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->f()D

    move-result-wide v3

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 12
    invoke-static {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getMapBound()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    .line 16
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getMapBound()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p1, v2

    .line 17
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->f:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 19
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method

.method private final D(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->Q(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->i(Ljava/util/List;Z)V

    :cond_2
    return-void
.end method

.method private final j(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/c/a;

    .line 2
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->getLayerKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->getLayerKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->getLayerKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    .line 5
    invoke-interface {v1, p1, v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->createMapLayers(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)Ljava/util/List;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->e:Ljava/util/HashMap;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->getLayerKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "renderModel.layerKey"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "createMapLayers"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final k()Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->g:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;

    return-object v0
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->A(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    :goto_0
    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->A(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    :goto_0
    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->k()Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;

    move-result-object v0

    iget-wide v1, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;->k(JLjava/util/List;)V

    :goto_0
    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/c/h;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->A(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    :goto_0
    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/c/k;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->A(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    :goto_0
    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->m(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/c/h;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->p(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/c/h;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->o(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->z(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->B(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/c/k;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->q(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/c/k;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->l(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExamModelSettingActivity"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_6

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    const-string v3, "list"

    if-eqz v2, :cond_1

    .line 5
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 6
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7
    :cond_1
    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    if-eqz v2, :cond_2

    .line 8
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 10
    :cond_2
    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k;

    if-eqz v2, :cond_3

    .line 11
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 12
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 13
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 14
    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "data.key"

    if-eqz v2, :cond_5

    .line 16
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->D(Ljava/lang/String;Z)V

    goto :goto_3

    .line 18
    :cond_5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->D(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8003\u8bd5\u6a21\u5f0f\u8bbe\u7f6e"

    return-object v0
.end method

.method protected init()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->f:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u8003\u8bd5\u6a21\u5f0f\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/g;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/g;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/f;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/f;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    .line 8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/e;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/k;

    .line 10
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/j;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/j;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    goto :goto_0

    :cond_1
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    .line 11
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/k;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/k;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setOnClickListener(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->k()Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;->i()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/d;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 14
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "\u8bf7\u5148\u53bb\u9009\u62e9\u8003\u573a"

    .line 15
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->f:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "\u6b63\u5728\u52a0\u8f7d\u5730\u56fe..."

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 17
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 18
    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-wide v4, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/k;

    iget-wide v4, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/c/k;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 21
    :cond_5
    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-wide v4, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;-><init>(Ljava/lang/String;ZZ)V

    .line 22
    :goto_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->k()Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;

    move-result-object v1

    iget-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;->j(J)V

    :goto_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n()V

    return-void
.end method
