.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/manager/map/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/d;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/f;->a:Landroidx/appcompat/app/d;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/f;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/f;->a:Landroidx/appcompat/app/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/f;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->t(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method
