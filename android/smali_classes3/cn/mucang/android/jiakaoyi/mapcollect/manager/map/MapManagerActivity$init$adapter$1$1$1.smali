.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$adapter$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$adapter$1$1;->invoke(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "model",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$adapter$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$adapter$1$1$1;->$it:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$adapter$1$1$1;->invoke$lambda-1$lambda-0(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$adapter$1$1$1;->invoke$lambda-1(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method private static final invoke$lambda-1(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 2

    const-string v0, "$model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a;->d(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;J)V

    .line 2
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/r/a;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 5
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final invoke$lambda-1$lambda-0(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;->k(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key.chooseResult"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/s/j;->r(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string p0, "viewModel"

    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$adapter$1$1$1;->invoke(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u6ca1\u6709\u8003\u573a\u6570\u636e"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$adapter$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;->k(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, "\u6b63\u5728\u52a0\u8f7d\u8003\u573a\u6570\u636e..."

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->e(ZLjava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$adapter$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$adapter$1$1$1;->$it:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/j0;

    invoke-direct {v2, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/j0;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string p1, "viewModel"

    .line 6
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
