.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/manager/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h;

.field public final synthetic b:Landroidx/appcompat/app/d;

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/framework/h/b;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/h;Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/g;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/g;->b:Landroidx/appcompat/app/d;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/g;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/g;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/g;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/g;->b:Landroidx/appcompat/app/d;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/g;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/g;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;->c(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
