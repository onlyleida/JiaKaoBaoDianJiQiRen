.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/a0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/a0;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/a0;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/a0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/a0;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/a0;->c:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$6$1;->c(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method
