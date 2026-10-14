.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/n;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/n;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/n;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/n;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->p(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V

    return-void
.end method
