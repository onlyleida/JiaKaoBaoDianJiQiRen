.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

.field public final synthetic d:Landroid/app/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h0;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h0;->b:Landroid/view/View;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h0;->d:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h0;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h0;->b:Landroid/view/View;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/h0;->d:Landroid/app/ProgressDialog;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$2$1;->a(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;Landroid/app/ProgressDialog;)V

    return-void
.end method
