.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i0;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i0;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$adapter$1$1$1;->a(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method
