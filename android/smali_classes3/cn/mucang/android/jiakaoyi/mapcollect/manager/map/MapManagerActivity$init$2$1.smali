.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;->o(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/t<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "schoolName",
        "",
        "siteName",
        "city",
        "cityCode",
        "gpsBaseId",
        "",
        "canPublic",
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
.field final synthetic $it:Landroid/view/View;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$2$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$2$1;->$it:Landroid/view/View;

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$2$1;->invoke$lambda-1(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method private static final invoke$lambda-1(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Landroid/app/ProgressDialog;)V
    .locals 2

    const-string v0, "$newModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pd"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcn/mucang/jiakaoyi/uilib/i/g;->n(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->O(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    .line 3
    invoke-static {p2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;->l(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5
    :goto_0
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 6
    :try_start_1
    instance-of p1, p0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz p1, :cond_1

    .line 7
    check-cast p0, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_2
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_3
    return-void

    :goto_4
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
    throw p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    move-object v5, p5

    check-cast v5, Ljava/lang/Long;

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$2$1;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 1

    const-string v0, "schoolName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "siteName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;-><init>()V

    .line 3
    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->driveSchoolName:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    .line 6
    iput-object p4, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    .line 7
    iput-boolean p6, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canPublic:Z

    if-nez p5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 9
    iput-wide p1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->gpsBaseId:J

    .line 10
    :goto_0
    iget-wide p1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->gpsBaseId:J

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-lez p5, :cond_1

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$2$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    const/4 p2, 0x0

    const-string p3, "\u6b63\u5728\u521b\u5efa..."

    invoke-static {p1, p2, p3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    const-string p2, "show(this, null, \"\u6b63\u5728\u521b\u5efa...\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$2$1;->$it:Landroid/view/View;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$2$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    new-instance p4, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h0;

    invoke-direct {p4, v0, p2, p3, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h0;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Landroid/app/ProgressDialog;)V

    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const-string p1, "\u65e0\u6548\u7684\u57fa\u7ad9Id"

    .line 13
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
