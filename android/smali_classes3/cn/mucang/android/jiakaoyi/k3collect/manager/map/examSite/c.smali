.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/c;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/c;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;->n(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method
