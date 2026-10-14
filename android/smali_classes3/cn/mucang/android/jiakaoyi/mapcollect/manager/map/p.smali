.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/d;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/p;->a:Landroidx/appcompat/app/d;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/p;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/p;->c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/p;->a:Landroidx/appcompat/app/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/p;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/p;->c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->r(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V

    return-void
.end method
