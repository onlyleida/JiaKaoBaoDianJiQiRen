.class public Lcn/mucang/android/jiakaoyi/k3collect/manager/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-void
.end method

.method private synthetic b(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/q/h;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/q/h;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/h;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v0, p1, p2, v1}, Lcn/mucang/jiakaoyi/uilib/q/h;->c(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/q/h$b;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/d;",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/manager/g;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/h;Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic c(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;->b(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
