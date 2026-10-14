.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$4$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->A(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/String;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "name",
        ""
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
.field final synthetic $holder:Lcn/mucang/android/jiakaoyi/framework/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $item:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field final synthetic $viewModel:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$4$1$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$4$1$1;->$holder:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$4$1$1;->$viewModel:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$4$1$1;->invoke$lambda-0(Landroid/app/ProgressDialog;)V

    return-void
.end method

.method private static final invoke$lambda-0(Landroid/app/ProgressDialog;)V
    .locals 1

    const-string v0, "$pd"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$4$1$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$4$1$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v2, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->driveSchoolName:Ljava/lang/String;

    iput-object v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->driveSchoolName:Ljava/lang/String;

    .line 4
    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    .line 5
    iget-object p1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    .line 6
    iget-object p1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    .line 7
    iget-boolean p1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canPublic:Z

    iput-boolean p1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canPublic:Z

    .line 8
    iget-wide v2, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    iput-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    .line 9
    iget-wide v2, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    iput-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    .line 10
    iget-wide v2, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originAltitude:D

    iput-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originAltitude:D

    .line 11
    iget-object p1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    .line 12
    iget-object p1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataUrl:Ljava/lang/String;

    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataUrl:Ljava/lang/String;

    .line 13
    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->gpsBaseId:J

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->gpsBaseId:J

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$4$1$1;->$holder:Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->copyTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "\u6b63\u5728\u590d\u5236..."

    invoke-static {p1, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    const-string v1, "show(holder.viewBinding.\u2026context, null, \"\u6b63\u5728\u590d\u5236...\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$4$1$1;->$viewModel:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;->m(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/u;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/u;-><init>(Landroid/app/ProgressDialog;)V

    :goto_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "\u670d\u52a1\u5f02\u5e38"

    .line 17
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const-string v1, "TAG"

    const-string v2, "create error : "

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/u;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/u;-><init>(Landroid/app/ProgressDialog;)V

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/u;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/u;-><init>(Landroid/app/ProgressDialog;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    throw v0
.end method
