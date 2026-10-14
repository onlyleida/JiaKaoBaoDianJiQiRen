.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/y0;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/y0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/l;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/y0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/l;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/l;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/y0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/l;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/y0;->o(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/y0;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method
