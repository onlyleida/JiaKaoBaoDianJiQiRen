.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/manager/map/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic b:Landroidx/appcompat/app/d;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/g;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/g;->b:Landroidx/appcompat/app/d;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/g;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/g;->b:Landroidx/appcompat/app/d;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->u(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Ljava/lang/String;)V

    return-void
.end method
