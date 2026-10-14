.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/t;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/t;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/t;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/t;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/t;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/t;->c:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$1$1;->c(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V

    return-void
.end method
