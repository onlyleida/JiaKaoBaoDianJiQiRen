.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->z(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V
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
        "<anonymous parameter 4>",
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
.field final synthetic $item:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field final synthetic $viewModel:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$3$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$3$1;->$viewModel:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
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

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$3$1;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 0

    const-string p5, "schoolName"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "siteName"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "city"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$3$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p1, p5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->driveSchoolName:Ljava/lang/String;

    .line 3
    iput-object p2, p5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    .line 4
    iput-object p3, p5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    .line 5
    iput-object p4, p5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    .line 6
    iput-boolean p6, p5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canPublic:Z

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$3$1;->$viewModel:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    invoke-virtual {p1, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;->o(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method
