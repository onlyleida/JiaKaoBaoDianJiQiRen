.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/manager/map/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/e;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/e;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/e;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/e;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->s(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method
