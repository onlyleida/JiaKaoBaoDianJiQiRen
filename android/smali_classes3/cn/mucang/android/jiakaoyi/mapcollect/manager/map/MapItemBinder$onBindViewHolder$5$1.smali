.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->B(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V
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
.field final synthetic $it:Landroid/view/View;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;->$it:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;->invoke$lambda-2(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;->invoke$lambda-0(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;->invoke$lambda-2$lambda-1(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u6b63\u5728\u52a0\u8f7d\u5730\u56fe\u6570\u636e..."

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final invoke$lambda-2(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V
    .locals 2

    const-string v0, "$model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a;->d(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;J)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x;

    invoke-direct {v0, p1, p2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final invoke$lambda-2$lambda-1(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 2
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity;->f:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "it.context"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity$a;->b(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity$a;Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;->invoke(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;->$it:Landroid/view/View;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/v;

    invoke-direct {v2, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/v;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
