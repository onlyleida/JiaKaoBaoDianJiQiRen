.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/s;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/s;->b:Landroid/view/View;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/s;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/s;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/s;->b:Landroid/view/View;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/s;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$1$1;->b(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method
