.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/manager/map/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/a;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/a;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/a;->b:Landroid/view/View;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->o(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
